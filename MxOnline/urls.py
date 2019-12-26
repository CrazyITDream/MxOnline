"""MxOnline URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path, include
from django.urls import re_path
from django.views.generic import TemplateView
from django.views.static import serve

import xadmin

from user.views import LoginView, RegisterView, ActiveUserView, ForgetPwdView, ResetView, ModifyPwView, LogOutView, IndexView
from MxOnline.settings import MEDIA_ROOT    #, STATIC_ROOT

urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    # 首页
    re_path(r'^index/$', IndexView.as_view(), name="index"),
    # 登录url
    re_path(r'^login/$', LoginView.as_view(), name="login"),
    # 退出url
    re_path(r'^logout/$', LogOutView.as_view(), name="logout"),
    # 注册url
    re_path(r'^register/$', RegisterView.as_view(), name="register"),
    # 激活用户url
    re_path(r'^active/(?P<active_code>.*)/$', ActiveUserView.as_view(), name="active"),
    # 忘记密码url
    re_path(r'^forget/$', ForgetPwdView.as_view(), name="forget_pwd"),
    # 重置密码url
    re_path(r'^reset/(?P<active_code>.*)/$', ResetView.as_view(), name="reset_pwd"),
    # 修改密码url
    re_path(r'^modify_pwd/$', ModifyPwView.as_view(), name="modify_pwd"),
    # 验证码url
    re_path(r'^captcha/', include('captcha.urls')),
    # 处理media信息(上传文件的处理)
    re_path(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT}),

    # 处理static
    # re_path(r'^static/(?P<path>.*)$', serve, {"document_root": STATIC_ROOT}),

    # 课程url
    re_path(r'^org/', include('organization.urls', namespace="org")),

    # 公开课的url
    re_path(r'^cour/', include('courses.urls', namespace="cour")),

    # 用户的url
    re_path(r'^users/', include('user.urls', namespace="users")),

    # 富文本配置
    re_path(r'^ueditor/',include('DjangoUeditor.urls' )),
]
# 全局404页面配置
hanler404 = 'users.views.page_no_found'

# 全局404页面配置
hanler500 = 'users.views.page_error'
