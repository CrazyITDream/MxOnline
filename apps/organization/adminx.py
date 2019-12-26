# _*_ conding: utf-8 _*_
__author__ = 'xiaohuo'
__date__ = '2019/12/2 2:01'

import xadmin

from organization.models import CityDict, CourseOrg, Teach


class CityDictAdmin(object):
    list_display = ['name', 'add_time']
    search_fields = ['name']
    list_filter = ['name', 'add_time']
    import_excel = True

    def post(self, request, *args, **kwargs):
        if 'excel' in request.FILES:
            pass
        return super(CityDictAdmin, self).post(request, args, kwargs)


class CourseOrgAdmin(object):
    list_display = ['name', 'desc', 'click_nums', 'fav_nums', 'address', 'city', 'add_time', 'students', 'course_nums']
    search_fields = ['name', 'desc', 'click_nums', 'fav_nums', 'address', 'city']
    list_filter = ['name', 'desc', 'click_nums', 'fav_nums', 'address', 'city', 'add_time', 'students', 'course_nums']
    relfield_style = 'fk-ajax'
    readonly_fields = ['click_nums', 'fav_nums', 'students', 'course_nums']


class TeachAdmin(object):
    list_display = ['org', 'name', 'work_years', 'work_company', 'work_position', 'click_nums', 'fav_nums', 'add_time']
    search_fields = ['org', 'name', 'work_years', 'work_company', 'work_position', 'click_nums', 'fav_nums']
    list_filter = ['org', 'name', 'work_years', 'work_company', 'work_position', 'click_nums', 'fav_nums', 'add_time']
    readonly_fields = ['click_nums', 'fav_nums']

xadmin.site.register(CityDict, CityDictAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(Teach, TeachAdmin)
