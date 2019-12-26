# _*_ conding: utf-8 _*_
__author__ = 'xiaohuo'
__date__ = '2019/12/8 17:06'

from django import forms

from captcha.fields import CaptchaField

from user.models import UserProfile

class LoginFrom(forms.Form):
    """登录表单验证"""
    # 用户名密码不能为空
    username = forms.CharField(required=True)
    # 密码不能小于5位
    password = forms.CharField(required=True, min_length=5)


# 引入验证码
class RegisterForm(forms.Form):
    """验证码form & 注册表单form"""
    # 此处email与前端name需保持一致。
    email = forms.EmailField(required=True)
    # 密码不能小于5位
    password = forms.CharField(required=True, min_length=5)
    # 应用验证码 自定义错误输出key必须与异常一样
    captcha = CaptchaField(error_messages={"invalid": u"验证码错误"})


class ActiveForm(forms.Form):
    """激活时验证码实现"""
    # 激活时不对邮箱密码做验证
    # 应用验证码 自定义错误输出key必须与异常一样
    captcha = CaptchaField(error_messages={"invalid": u"验证码错误"})


class ForgetForm(forms.Form):
    """忘记密码实现"""
    # 此处email与前端name需保持一致。
    email = forms.EmailField(required=True)
    # 应用验证码 自定义错误输出key必须与异常一样
    captcha = CaptchaField(error_messages={"invalid": u"验证码错误"})


class ModifyPwForm(forms.Form):
    """重置密码form实现"""
    # 密码不能小于5位
    password1 = forms.CharField(required=True, min_length=5)
    # 密码不能小于5位
    password2 = forms.CharField(required=True, min_length=5)


class UploadImageFrom(forms.ModelForm):
    """用户头像修改"""
    class Meta:
        model = UserProfile
        fields = ['img']


class UploadInfoFrom(forms.ModelForm):
    """用户信息的保存"""
    class Meta:
        model = UserProfile
        fields = ['nick_name', 'birday', 'gender', 'address', 'mobile']
