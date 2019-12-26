# _*_ conding: utf-8 _*_
__author__ = 'xiaohuo'
__date__ = '2019/12/2 1:57'

import xadmin

from opration.models import UserAsk, CourseComments, UserFavorite, UserMessage, UserCourse


class UserAskAdmin(object):
    list_display = ['name', 'mobile', 'course_name', 'add_time']
    search_fields = ['name', 'mobile', 'course_name']
    list_filter = ['course_name', 'add_time']


class CourseCommentsAdmin(object):
    list_display = ['user', 'course', 'add_time']
    search_fields = ['user', 'course']
    list_filter = ['user', 'course', 'add_time']


class UserFavoriteAdmin(object):
    list_display = ['user', 'fav_type', 'add_time']
    search_fields = ['user', 'fav_type']
    list_filter = ['user', 'fav_type', 'add_time']


class UserMessageAdmin(object):
    list_display = ['add_time', 'has_read']
    search_fields = ['message', 'has_read']
    list_filter = ['add_time', 'has_read']


class UserCourseAdmin(object):
    list_display = ['course', 'add_time']
    search_fields = ['course']
    list_filter = ['course', 'add_time']


xadmin.site.register(UserAsk, UserAskAdmin)
xadmin.site.register(CourseComments, CourseCommentsAdmin)
xadmin.site.register(UserFavorite, UserFavoriteAdmin)
xadmin.site.register(UserMessage, UserMessageAdmin)
xadmin.site.register(UserCourse, UserCourseAdmin)





