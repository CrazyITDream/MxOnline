# _*_ conding: utf-8 _*_
__author__ = 'xiaohuo'
__date__ = '2019/12/10 23:47'
from django.urls import re_path

from courses.views import CourseListView, CourseDetailView, CourseInfoView, CommentView, AddComentsView, VideoPlayView

app_name = '[course]'
urlpatterns = [
    # 公开课列表页
    re_path(r'^list/$', CourseListView.as_view(), name="cour_list"),
    # 课程描述页
    re_path(r'^detail/(?P<course_id>\d+)/', CourseDetailView.as_view(), name="cour_detail"),

    # 课程详情信息页
    re_path(r'^info/(?P<course_id>\d+)/', CourseInfoView.as_view(), name="cour_info"),

    # 课程评论页面
    re_path(r'^comment/(?P<course_id>\d+)/', CommentView.as_view(), name="cour_comment"),

    # 添加课程评论
    re_path(r'^add_comment/$', AddComentsView.as_view(), name="add_comment"),

    # 视屏播放
    re_path(r'^video/(?P<video_id>\d+)/', VideoPlayView.as_view(), name="video_play"),
]




