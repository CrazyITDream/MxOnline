# _*_ conding: utf-8 _*_
__author__ = 'xiaohuo'
__date__ = '2019/12/5 11:13'

from django.urls import re_path

from user.views import UserinfoView, UploadImageView, UpdatePwdView, SendEmailCodeView, MyMessageView
from user.views import UpdateEmailView, MyCourseView, MyFavOrgView, MyFavTeacherView, MyFavCourseView

from user.views import LoginView, RegisterView, ActiveUserView, ForgetPwdView, ResetView, ModifyPwView

# 用户的url配置
app_name = '[user]'
urlpatterns = [
    # 用户信息url
    re_path(r'^info/$', UserinfoView.as_view(), name="user_info"),

    # 用户头像上传url
    re_path(r'^image/upload/$', UploadImageView.as_view(), name="image_upload"),

    # 用户修改密码url
    re_path(r'^update/pwd/$', UpdatePwdView.as_view(), name="upload_pwd"),

    # 发送用户邮箱验证
    re_path(r'^sendemail_code/$', SendEmailCodeView.as_view(), name="sendemail_code"),

    # 邮箱的修改
    re_path(r'^update_email/$', UpdateEmailView.as_view(), name="update_email"),

    # 用户课程
    re_path(r'^mycourse/$', MyCourseView.as_view(), name="mycourse"),

    # 我收藏的课程机构
    re_path(r'^myfav/org/$', MyFavOrgView.as_view(), name="myfav_org"),

    # 我收藏的授课讲师
    re_path(r'^myfav/teacher/$', MyFavTeacherView.as_view(), name="myfav_teacher"),

    # 我收藏的课程
    re_path(r'^myfav/course/$', MyFavCourseView.as_view(), name="myfav_course"),

    # 我收藏的消息
    re_path(r'^mymesssge/course/$', MyMessageView.as_view(), name="mymesssge"),
]
