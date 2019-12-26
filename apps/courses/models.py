from datetime import datetime

from django.db import models
from organization.models import CourseOrg, Teach

from DjangoUeditor.models import UEditorField
# Create your models here.


class Course(models.Model):
    course_org = models.ForeignKey(CourseOrg, verbose_name="课程机构", null=True, on_delete=models.CASCADE)
    name = models.CharField(max_length=50, verbose_name="课程名")
    desc = models.CharField(max_length=300, verbose_name="课程描述")
    detail = UEditorField(verbose_name="课程详情", width=600, height=300, imagePath="course/%(basename)s_%(datetime)s.%(extname)s",
                          filePath="course/%(basename)s_%(datetime)s.%(extname)s", default="")
    is_banner = models.BooleanField(default=False, verbose_name="是否轮播")
    teach = models.ForeignKey(Teach, verbose_name="讲师", on_delete=models.CASCADE, null=True, blank="")
    degree = models.CharField(choices=(("cj", "初级"), ("zj", "中级"), ("gj", "高级")), max_length=2, verbose_name="难度")
    learn_time = models.IntegerField(default=0, verbose_name="学习时长(分钟)")
    students = models.IntegerField(default=0, verbose_name="学习人数")
    fav_nums = models.IntegerField(default=0, verbose_name="收藏人数")
    image = models.ImageField(upload_to="courses/%Y/%m", verbose_name="封面图片")
    click_nums = models.IntegerField(default=0, verbose_name="点击数")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="添加时间")
    category = models.CharField(max_length=20, verbose_name="课程类别", default="")
    tag = models.CharField(default="", verbose_name="课程标签", max_length=10)
    youneed_konw = models.CharField(max_length=300, verbose_name="课程需知", default="")
    teacher_tell = models.CharField(max_length=300, verbose_name="老师告诉你学习到什么", default="")


    class Meta:
        verbose_name = "课程"
        verbose_name_plural = verbose_name

    def get_zj_nums(self):
        """
        获取课程章节数
        :return:all_lessons
        """
        all_lessons = self.lesson_set.all().count()
        return all_lessons
    get_zj_nums.short_description = "章节数"

    def go_to(self):
        from django.utils.safestring import mark_safe
        return mark_safe("<a href='http://www.fireitblog.com'>跳转</a>")
    go_to.short_description = "跳转"

    def get_learn_users(self):
        return self.usercourse_set.all()[:5]

    def get_course_lesson(self):
        """
        获取课程的所有章节数
        :return:
        """
        return self.lesson_set.all()

    def __str__(self):
        return self.name

    def __bytes__(self):
        return str(self).encode('iso-8859-1')


class Lesson(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name="课程")
    name = models.CharField(max_length=100, verbose_name="章节名")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="添加时间")

    class Meta:
        verbose_name = "章节"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

    def __bytes__(self):
        return str(self).encode('iso-8859-1')

    def get_lesson_video(self):
        """
        获取章节的视频
        :return:
        """
        return self.video_set.all()


class Video(models.Model):
    lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE, verbose_name="章节")
    name = models.CharField(max_length=100, verbose_name="名称")
    learn_time = models.IntegerField(default=0, verbose_name="学习时长(分钟)")
    url = models.CharField(max_length=200, verbose_name="访问地址", default="")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = "视频"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

    def __bytes__(self):
        return str(self).encode('iso-8859-1')


class CourseResource(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name="课程")
    name = models.CharField(max_length=100, verbose_name="名称")
    download = models.FileField(upload_to="course/resource/%Y/%m", verbose_name="下载文件")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="添加时间")

    class Meta:
        verbose_name = "课程资源"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

    def __bytes__(self):
        return str(self).encode('iso-8859-1')


class BannerCourse(Course):
    class Meta:
        verbose_name = "轮播课程"
        verbose_name_plural = verbose_name
        proxy = True
