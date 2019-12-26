from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic.base import View
from django.db.models import Q
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger

from courses.models import Course, CourseResource, Video
from opration.models import UserFavorite, CourseComments, UserCourse
from utils.mixin_utils import LoginRequiredMixin

# Create your views here.
class CourseListView(View):
    """
    公开课数据
    """
    def get(self, request):
        all_courses = Course.objects.all().order_by("-add_time")

        hot_courses = Course.objects.all().order_by("-click_nums")[:3]

        # 课程搜索
        search_keywords = request.GET.get('keywords', "")
        if search_keywords:
            all_courses = all_courses.filter(Q(name__icontains=search_keywords) | Q(desc__contains=search_keywords) | Q(detail__contains=search_keywords))



        # 课程帅选排序
        sort = request.GET.get('sort', "")
        if sort:
            if sort == "students":
                all_courses = all_courses.order_by("-students")
            elif sort == "hot":
                all_courses = all_courses.order_by("-click_nums")

        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_courses, 9, request=request)
        # 分页
        courses = p.page(page)
        return render(request, 'course-list.html', {
            "all_courses": courses,
            "sort": sort,
            "hot_courses": hot_courses
        })


class CourseDetailView(View):
    """
    课程详情页数据展示
    """
    def get(self, request, course_id):
        # 根据课程ID获取课程
        course = Course.objects.get(id=int(course_id))
        # 增加课程点击数量
        course.click_nums += 1
        course.save()

        has_fav_course = False
        has_fav_org = False

        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=course.id, fav_type=1):
                has_fav_course = True
            if UserFavorite.objects.filter(user=request.user, fav_id=course.course_org.id, fav_type=2):
                has_fav_org = True

        tag = course.tag
        if tag:
            relate_coures = Course.objects.filter(tag=tag)[1:2]
        else:
            relate_coures = []
        return render(request, 'course-detail.html', {
            "course": course,
            "relate_coures": relate_coures,
            'has_fav_course': has_fav_course,
            'has_fav_org': has_fav_org
        })


class CourseInfoView(LoginRequiredMixin, View):
    login_url = 'login'
    redirect_field_name = 'next'
    """
    课程章节详情页
    """
    def get(self, request, course_id):
        # 取出所有的课程
        course = Course.objects.get(id=int(course_id))
        course.students += 1
        course.save()

        # 查询用户是否已经关联了课程
        if not request.user.is_authenticated:
            user_courses = UserCourse.objects.filter(request.user, course=course)
            if not user_courses:
                user_course = UserCourse(user=request.user, course=course)
                user_course.save()

        #  取出学习了课程的所有的用户
        user_coursers = UserCourse.objects.filter(course=course)

        user_ids = [user_courser.user.id for user_courser in user_coursers]

        all_user_courses = UserCourse.objects.filter(user_id__in=user_ids)
        # 取出所有课程ID
        course_ids = [user_courser.course.id for user_courser in all_user_courses]
        # 获取学过其他的所有课程
        relate_courses = Course.objects.filter(id__in=course_ids).order_by("-click_nums")[:5]
        # 取出所有的课程资源
        all_resource = CourseResource.objects.filter(course=course)
        return render(request, 'course-video.html', {
            "course": course,
            "all_resource": all_resource,
            "relate_courses": relate_courses
        })


class CommentView(LoginRequiredMixin, View):
    login_url = 'login'
    redirect_field_name = 'next'
    """
    评论页面
    """
    def get(self, request, course_id):
        # 取出所有的课程
        course = Course.objects.get(id=int(course_id))
        # 取出所有的课程资源
        all_resources = CourseResource.objects.filter(course=course)
        # 取出所有的课程评论
        all_comment = CourseComments.objects.all()
        # 选出学了这门课的学生关系
        user_courses = UserCourse.objects.filter(course=course)
        # 从关系中取出user_id
        user_ids = [user_course.user_id for user_course in user_courses]
        # 这些用户学了的课程,外键会自动有id，取到字段
        all_user_courses = UserCourse.objects.filter(user_id__in=user_ids)
        # 取出所有课程id
        course_ids = [ user_course.course_id for user_course in all_user_courses]
        # 获取学过该课程用户学过的其他课程
        relate_courses = Course.objects.filter(id__in=course_ids).order_by("-click_nums")[:5]
        return render(request, "course-comment.html", {
            "course": course,
            "all_resources": all_resources,
            "all_comment": all_comment,
            "relate_courses": relate_courses
        })


class AddComentsView(View):
    """
    用户添加评论
    """
    def post(self, request):
        if not request.user.is_authenticated:
            # 判断用户是否登录
            return HttpResponse('{"status":"fail", "msg":"用户未登录"}', content_type='application/json')

        course_id = request.POST.get("course_id", 0)
        comments = request.POST.get("comments", "")
        if int(course_id) > 0 and comments:
            course_comments = CourseComments()
            course = Course.objects.get(id=int(course_id))
            course_comments.course = course
            course_comments.comments = comments
            course_comments.user = request.user
            course_comments.save()
            return render('{"status":"success", "msg":"添加成功"}', content_type='application/json')

        else:
            return render('{"status":"success", "msg":"添加失败"}', content_type='application/json')


class VideoPlayView(LoginRequiredMixin, View):
    login_url = 'login'
    redirect_field_name = 'next'
    """
    视频播放器
    """
    def get(self, request, video_id):
        # 取出所有的课程
        video = Video.objects.get(id=int(video_id))
        course = video.lesson.course
        # 查询用户是否已经关联了课程
        if not request.user.is_authenticated:
            user_courses = UserCourse.objects.filter(request.user, course=course)
            if not user_courses:
                user_course = UserCourse(user=request.user, course=course)
                course.students += 1
                course.save()
                user_course.save()

        #  取出学习了课程的所有的用户
        user_coursers = UserCourse.objects.filter(course=course)

        user_ids = [user_courser.user.id for user_courser in user_coursers]

        all_user_courses = UserCourse.objects.filter(user_id__in=user_ids)
        # 取出所有课程ID
        course_ids = [user_courser.course.id for user_courser in all_user_courses]
        # 获取学过其他的所有课程
        relate_courses = Course.objects.filter(id__in=course_ids).order_by("-click_nums")[:5]
        # 取出所有的课程资源
        all_resource = CourseResource.objects.filter(course=course)
        return render(request, 'course-play.html', {
            "course": course,
            "all_resource": all_resource,
            "relate_courses": relate_courses,
            "video": video
        })






