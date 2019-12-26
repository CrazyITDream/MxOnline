# _*_ conding: utf-8 _*_
__author__ = 'xiaohuo'
__date__ = '2019/12/10 23:39'

import re

from django import forms
from opration.models import UserAsk


class UserAskForm(forms.ModelForm):
    class Meta:
        model = UserAsk
        fields = ['name', 'mobile', 'course_name']

    def clean_mobile(self):
        """
        验证手机号码是否合法
        :return: mobile
        """
        mobile = self.cleaned_data['mobile']
        REGEX_MOBILE = "^1([38]\d|5[0-35-9]|7[3678])\d{8}$"
        p = re.compile(REGEX_MOBILE)
        if p.match(mobile):
            return mobile
        else:
            raise forms.ValidationError("手机号码非法", code="mobile_invalid")









