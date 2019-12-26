# _*_ conding: utf-8 _*_
__author__ = 'xiaohuo'
__date__ = '2019/12/10 23:47'

from django.urls import re_path

from organization.views import OrgView
from organization.views import AddUserAskView, OrgHomeView, OrgCourseView, OrgDescView, OrgTeacherView, AddFavoriteView
from organization.views import TeacherListView, TeacherDetailView

app_name = '[organization]'
urlpatterns = [
    # 课程机构列表页
    re_path(r'^list/$', OrgView.as_view(), name="org_list"),
    re_path(r'^add_ask/$', AddUserAskView.as_view(), name="add_ask"),
    re_path(r'^home/(?P<org_id>\d+)/$', OrgHomeView.as_view(), name="org_home"),
    re_path(r'^course/(?P<org_id>\d+)/$', OrgCourseView.as_view(), name="org_course"),
    re_path(r'^desc/(?P<org_id>\d+)/$', OrgDescView.as_view(), name="org_desc"),
    re_path(r'^org_teacher/(?P<org_id>\d+)/$', OrgTeacherView.as_view(), name="org_teacher"),

    # 机构收藏
    re_path(r'^add_fav/$', AddFavoriteView.as_view(), name="add_fav"),

    # 讲师列表页
    re_path(r'^teacher/list/$', TeacherListView.as_view(), name="teacher_list"),

    # 讲师详情页
    re_path(r'^teacher/detail/(?P<teacher_id>\d+)/', TeacherDetailView.as_view(), name="teacher_detail"),


]

