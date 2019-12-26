# _*_ conding: utf-8 _*_
__author__ = 'xiaohuo'
__date__ = '2019/12/2 0:50'

import xadmin
from xadmin.models import Log
from django.contrib.auth.models import Group, Permission

from user.models import EmailVerfyRecord, Banner, UserProfile
from courses.models import Lesson, Course, CourseResource, Video, BannerCourse
from opration.models import UserCourse, UserMessage, CourseComments, UserAsk, UserFavorite
from organization.models import CityDict, Teach, CourseOrg

from xadmin import views


class EmailVerfyRecordAdmin(object):
    list_display = ['code', 'email', 'send_type', 'send_time']
    search_fields = ['code', 'email', 'send_type']
    list_filter = ['code', 'email', 'send_type', 'send_time']


class BannerAdmin(object):
    list_display = ['title', 'image', 'url', 'index', 'add_time']
    search_fields = ['title', 'image', 'url', 'index']
    list_filter = ['title', 'image', 'url', 'index', 'add_time']


class BaseSetting(object):
    """X admin的全局配置设置"""
    # 主题功能开启
    enable_themes = True
    use_bootswatch = True


class GlobalSettings(object):
    """xadmin 全局配置参数信息设置"""
    site_title = "慕学在线后台管理站"
    site_footer = "muxie"

    # 收起菜单
    # menu_style = "accordion"
    def get_site_menu(self):
        return (
            {'title': '机构管理', 'menus': (
                {'title': '机构信息', 'url': self.get_model_url(CourseOrg, 'changelist')},
                {'title': '机构讲师', 'url': self.get_model_url(Teach, 'changelist')},
            )},
            {'title': '课程管理', 'menus': (
                {'title': '课程信息', 'url': self.get_model_url(Course, 'changelist')},
                {'title': '章节信息', 'url': self.get_model_url(Lesson, 'changelist')},
                {'title': '视频信息', 'url': self.get_model_url(Video, 'changelist')},
                {'title': '课程资源', 'url': self.get_model_url(CourseResource, 'changelist')},
                {'title': '课程评论', 'url': self.get_model_url(CourseComments, 'changelist')},
                {'title': '轮播课程', 'url': self.get_model_url(BannerCourse, 'changelist')},
            )},
            {'title': '用户操作', 'menus': (
                {'title': '用户验证', 'url': self.get_model_url(EmailVerfyRecord, 'changelist')},
                {'title': '用户分组', 'url': self.get_model_url(Group, 'changelist')},
                {'title': '用户权限', 'url': self.get_model_url(Permission, 'changelist')},
                {'title': '用户咨询', 'url': self.get_model_url(UserAsk, 'changelist')},
            )},
            {'title': '用户管理', 'menus': (
                {'title': '用户信息', 'url': self.get_model_url(UserProfile, 'changelist')},
                {'title': '用户课程', 'url': self.get_model_url(UserCourse, 'changelist')},
                {'title': '用户收藏', 'url': self.get_model_url(UserFavorite, 'changelist')},
                {'title': '用户消息', 'url': self.get_model_url(UserMessage, 'changelist')},
            )},

            {'title': '系统管理', 'menus': (
                {'title': '首页轮播', 'url': self.get_model_url(Banner, 'changelist')},
                {'title': '日志记录', 'url': self.get_model_url(Log, 'changelist')},
                {'title': '所在城市', 'url': self.get_model_url(CityDict, 'changelist')},
            )},
        )


xadmin.site.register(EmailVerfyRecord, EmailVerfyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)

# 将Xadmin全局管理器与我们的view绑定注册。
xadmin.site.register(views.BaseAdminView, BaseSetting)

# 将头部与脚部信息进行注册:
xadmin.site.register(views.CommAdminView, GlobalSettings)
