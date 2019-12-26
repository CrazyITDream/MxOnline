import json
from django.shortcuts import render
from django.urls import reverse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from django.views.generic.base import View
from django.contrib.auth.hashers import make_password
from django.http.response import HttpResponse, HttpResponseRedirect
from user.models import UserProfile, EmailVerfyRecord, Banner
from user.forms import LoginFrom, RegisterForm, ForgetForm
from user.forms import ModifyPwForm, ActiveForm, UploadImageFrom, UploadInfoFrom
from opration.models import UserCourse, UserFavorite, UserMessage
from organization.models import CourseOrg, Teach
from courses.models import Course

from pure_pagination import Paginator, PageNotAnInteger
from utils.emial_send import send_register_email
from utils.mixin_utils import LoginRequiredMixin


class CustomBackend(ModelBackend):
    """
        实现用户名邮箱均可登录
        继承ModelBackend类，因为它有方法authenticate，可点进源码查看
    """
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            # 不希望用户存在两个，get只能有一个。两个是get失败的一种原因 Q为使用并集查询
            user = UserProfile.objects.get(Q(username=username) | Q(email=username))
            # django的后台中密码加密：所以不能password==password
            # UserProfile继承的AbstractUser中有def check_password(self,
            # raw_password):
            if user.check_password(password):
                return user
        except Exception as e:
            return None


class LogOutView(View):
    """退出登录"""
    def get(self, request):
        logout(request)
        return HttpResponseRedirect(reverse("index"))


class LoginView(View):
    """登录的View类"""
    def get(self, request):
        # render就是渲染html返回用户
        # render三变量: request 模板名称 一个字典写明传给前端的值
        redirect_url = request.GET.get('next', '')
        return render(request, 'login.html', {"redirect_url": redirect_url})

    def post(self, request):
        login_form = LoginFrom(request.POST)
        # is_valid判断我们字段是否有错执行我们原有逻辑，验证失败跳回login页面
        if login_form.is_valid():
            user_name = request.POST.get("username", "")
            pass_word = request.POST.get("password", "")
            # 成功返回user对象,失败返回null
            user = authenticate(username=user_name, password=pass_word)
            # 如果不是null说明验证成功
            if user is not None:
                # 只有当用户激活时才给登录
                if user.is_active:
                    # login_in 两参数：request, user
                    # 实际是对request写了一部分东西进去，然后在render的时候：
                    # request是要render回去的。这些信息也就随着返回浏览器。完成登录
                    login(request, user)
                    # 跳转到首页 user request会被带回到首页
                    # 增加重定向回原网页。
                    redirect_url = request.POST.get('next', '')
                    if redirect_url:
                        return HttpResponseRedirect(redirect_url)
                    return HttpResponseRedirect(reverse('index'))
                else:
                    return render(request, "login.html", {"msg": "用户名未激活! 请前往邮箱进行激活"})
            else:
                return render(request, "login.html", {"msg": "用户名或密码错误!"})
        else:
            return render(request, "login.html", {"login_form": login_form})


# 注册的View的类
class RegisterView(View):
    """注册功能的view"""
    # get方法直接返回页面
    def get(self, request):
        # 添加验证码
        register_form = RegisterForm()
        return render(request, 'register.html', {'register_form': register_form})

    def post(self, request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            # 这里注册时前端的name为email
            user_name = request.POST.get("email", "")
            # 用户查重
            if UserProfile.objects.filter(email=user_name):
                return render(request, "register.html", {"msg": "此邮箱以注册，请尝试找回密码！"})
            pass_word = request.POST.get("password", "")

            # 实例化一个user_profile对象，将前台值存入
            user_profile = UserProfile()
            user_profile.email = user_name

            # 默认激活状态为false
            user_profile.is_active = False

            # 加密password进行保存
            user_profile.password = make_password(password=pass_word)
            user_profile.save()

            # 写入欢迎注册信息
            user_message = UserMessage()
            user_message.user = user_profile.id
            user_message.message = "欢迎注册慕学在线网"
            user_message.save()

            # 发送注册激活邮件
            send_register_email(user_name, "register")
            # 跳转到登录页面
            return render(request, "login.html")
        # 注册邮箱form验证失败
        else:
            return render(request, "register.html", {"register_form": register_form})


# 激活用户的类
class ActiveUserView(View):
    def get(self, request, active_code):
        # 查询邮箱验证记录是否存在
        all_records = EmailVerfyRecord.objects.filter(code=active_code)
        # 如果不为空也就是有用户
        active_form = ActiveForm(request.GET)
        if all_records:
            for record in all_records:
                # 获取到对应的邮箱
                email = record.email
                # 查找到邮箱对应的user
                user = UserProfile.objects.get(email=email)
                user.is_active = True
                user.save()
                # 激活成功跳转到登录页面
                return render(request, "login.html")
        else:
            return render(request, "register.html", {"msg": "您的激活链接失效", "active_form": active_form})


# 忘记密码视图
class ForgetPwdView(View):
    """用户忘记密码的处理view"""
    # get方法直接返回页面
    def get(self, request):
        active_form = ActiveForm(request.POST)
        return render(request, "forgetpwd.html", {"active_form": active_form})

    def post(self, request):
        forget_form = ForgetForm(request.POST)
        if forget_form.is_valid():
            email = request.POST.get("email", "")
            # 发送找回密码邮件
            send_register_email(email, "forget")
            # 发送完毕返回登录页面并显示发送邮件成功。
            return render(request, "send_success.html", {"msg": "重置密码邮件已发送,请注意查收"})
        # 如果表单验证失败也就是他验证码输错等。
        else:
            return render(request, "forgetpwd.html", {"forget_form": forget_form})


class ResetView(View):
    """重置密码的view"""
    def get(self, request, active_code):
        all_records = EmailVerfyRecord.objects.filter(code=active_code)
        # 如果不为空也就是有用户
        active_form = ActiveForm(request.GET)
        if all_records:
            for record in all_records:
                # 获取到对应的邮箱
                email = record.email
                # 将email传回来
                # 只传回active_code
                return render(request, "password_reset.html", {"active_code": active_code})
        # 自己瞎输的验证码
        else:
            return render(request, "forgetpwd.html", {"msg": "您的重置密码链接无效,请重新请求", "active_form": active_form})


class ModifyPwView(View):
    """修改密码的view"""
    def post(self, request):
        modify_form = ModifyPwForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get("password1", "")
            pwd2 = request.POST.get("password2", "")
            # email = request.POST.get("email", "")
            active_code = request.POST.get("active_code", "")
            if pwd1 != pwd2:
                return render(request, "password_reset.html", {"active_code": active_code, "msg": "密码不一致"})
            all_record = EmailVerfyRecord.objects.filter(code=active_code)
            for record in all_record:
                email = record.email
            user = UserProfile.objects.get(email=email)
            user.password = make_password(pwd2)
            user.save()

            return render(request, "login.html", {"msg": "密码修改成功，请登录"})
        else:
            active_code = request.POST.get("active_code", "")
            return render(request, "password_reset.html", {"active_code": active_code, "msg": "密码小于5位"})


class UserinfoView(LoginRequiredMixin, View):
    login_url = '/login/'
    redirect_field_name = 'next'
    """
    用户个人信息
    """
    def get(self, request):
        return render(request, 'usercenter-info.html', {})

    def post(self, request):
        # 不像用户咨询是一个新的。需要指明instance。不然无法修改，而是新增用户
        user_info_form = UploadInfoFrom(request.POST, instance=request.user)
        if user_info_form.is_valid():
            user_info_form.save()
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse(json.dumps(user_info_form.errors), content_type='application/json')


class UploadImageView(LoginRequiredMixin, View):
    login_url = '/login/'
    redirect_field_name = 'next'
    """
    用户修改头像
    """
    def post(self, request):
        image_from = UploadImageFrom(request.POST, request.FILES, instance=request.user)
        if image_from.is_valid():
            image_from.save()
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse('{"status":"fail"}', content_type='application/json')


class UpdatePwdView(LoginRequiredMixin, View):
    """在个人中心修改密码的view"""
    def post(self, request):
        modify_form = ModifyPwForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get("password1", "")
            pwd2 = request.POST.get("password2", "")
            if pwd1 != pwd2:
                return HttpResponse('{"status":"fail","msg":"密码不一致"}', content_type='application/json')
            user = request.user
            user.password = make_password(pwd2)
            user.save()

            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse(json.dumps(modify_form.errors), content_type='application/json')


class SendEmailCodeView(LoginRequiredMixin, View):
    """
    发送邮箱验证码
    """
    def get(self, request):
        email = request.GET.get('email', '')

        if UserProfile.objects.filter(email=email):
            return HttpResponse('{"email":"邮箱已经存在"}', content_type='application/json')
        send_register_email(email, "update_email")
        return HttpResponse('{"status":"success"}', content_type='application/json')


class UpdateEmailView(LoginRequiredMixin, View):
    login_url = '/login/'
    redirect_field_name = 'next'
    """
    保存修改个人邮箱
    """
    def post(self, request):
        email = request.POST.get("email", '')
        code = request.POST.get("code", '')

        existed_records = EmailVerfyRecord.objects.filter(email=email, code=code, send_type='update_email')
        if existed_records:
            user = request.user
            user.email = email
            user.save()
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse('{"email":"验证码无效"}', content_type='application/json')


class MyCourseView(LoginRequiredMixin, View):
    login_url = '/login/'
    redirect_field_name = 'next'
    """
    我的课程
    """
    def get(self, request):
        user_course = UserCourse.objects.filter(user=request.user)
        return render(request, 'usercenter-mycourse.html', {
            "user_course": user_course,
        })


class MyFavOrgView(LoginRequiredMixin, View):
    login_url = '/login/'
    redirect_field_name = 'next'
    """
    我收藏的课程机构
    """
    def get(self, request):
        orgs_list = []
        fav_orgs = UserFavorite.objects.filter(user=request.user, fav_type=2)
        for fav_org in fav_orgs:
            org_id = fav_org.fav_id
            org = CourseOrg.objects.get(id=org_id)
            orgs_list.append(org)
            # 对消息进行分页处理
        return render(request, 'usercenter-fav-org.html', {
            "orgs_list": orgs_list,
        })


class MyFavTeacherView(LoginRequiredMixin, View):
    login_url = '/login/'
    redirect_field_name = 'next'
    """
     我收藏的授课讲师
    """
    def get(self, request):
        teacher_list = []
        fav_teacher = UserFavorite.objects.filter(user=request.user, fav_type=3)
        for fav_teacher in fav_teacher:
            teacher_id = fav_teacher.fav_id
            teacher = Teach.objects.get(id=teacher_id)
            teacher_list.append(teacher)
        return render(request, 'usercenter-fav-teacher.html', {
            "teacher_list": teacher_list,
        })


class MyFavCourseView(LoginRequiredMixin, View):
    login_url = '/login/'
    redirect_field_name = 'next'
    """我收藏的课程"""
    def get(self, request):
        course_list = []
        fav_course = UserFavorite.objects.filter(user=request.user, fav_type=1)
        for fav_course in fav_course:
            course_id = fav_course.fav_id
            course = Course.objects.get(id=course_id)
            course_list.append(course)

        return render(request, 'usercenter-fav-course.html', {
            "course_list": course_list,
        })


class MyMessageView(LoginRequiredMixin, View):
    login_url = '/login/'
    redirect_field_name = 'next'
    """我收藏的消息"""
    def get(self, request):
        all_message = UserMessage.objects.filter(user=request.user.id)

        # 用户消息处理
        all_unread_messages = UserMessage.objects.filter(user=request.user.id, has_read=False)
        for unread_message in all_unread_messages:
            unread_message.has_read = True
            unread_message.save()

        # 对消息进行分页处理
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_message, 5, request=request)
        # 分页
        messages = p.page(page)
        return render(request, 'usercenter-message.html', {
            "messages": messages,
        })


class IndexView(View):
    """主页面处理逻辑"""
    def get(self, request):
        # 取出轮播图
        all_banners = Banner.objects.all().order_by('index')[:5]
        courses = Course.objects.filter(is_banner=False)[:6]
        banner_courses = Course.objects.filter(is_banner=False)[:3]
        course_orgs = CourseOrg.objects.all()[:15]
        return render(request, 'index.html', {
            "all_banners": all_banners,
            "courses": courses,
            "banner_courses": banner_courses,
            "course_orgs": course_orgs,
        })


def page_no_found(request, **kwargs):
    """全局404页面配置"""
    from django.shortcuts import render_to_response
    response = render_to_response('404.html', {})
    response.status_code = 404
    return response

def page_error(request):
    """配置500页面配置"""
    from django.shortcuts import render_to_response
    response = render_to_response('500.html', {})
    response.status_code = 500
    return response

