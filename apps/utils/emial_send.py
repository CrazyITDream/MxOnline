# _*_ conding: utf-8 _*_
__author__ = 'xiaohuo'
__date__ = '2019/12/8 20:52'
from random import Random

from django.core.mail import send_mail

from user.models import EmailVerfyRecord
from MxOnline.settings import EMAIL_FROM


def random_str(random_length=8):
    """生成随机字符串"""
    str1 = ''
    # 生成字符串的可选字符串
    chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789'
    length = len(chars) - 1
    random = Random()
    for i in range(random_length):
        str1 += chars[random.randint(0, length)]
    return str1


def random_int(random_length=8):
    """生成随机数字字符串"""
    str1 = ''
    # 生成字符串的可选字符串
    chars = '0123456789'
    length = len(chars) - 1
    random = Random()
    for i in range(random_length):
        str1 += chars[random.randint(0, length)]
    return str1


def send_register_email(email, send_type="register"):
    email_record = EmailVerfyRecord()
    if send_type == "update_email":
        code = random_int(4)
    else:
        code = random_str(16)
    email_record.code = code
    email_record.email = email
    email_record.send_type = send_type
    email_record.save()

    email_title = ""
    email_body = ""

    if send_type == "register":
        email_title = "慕学在线网注册激活链接"
        email_body = "请点击下面的链接激活账号：http://127.0.0.1:8000/active/{0}".format(code)

        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            pass

    elif send_type == "forget":
        email_title = "慕学在线网密码重置链接"
        email_body = "请点击下面的链接重置密码：http://127.0.0.1:8000/reset/{0}".format(code)

        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            pass

    elif send_type == "update_email":
        email_title = "慕学在线网修改邮箱验证码"
        email_body = "你的邮箱验证码为：{0}".format(code)

        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        if send_status:
            pass
