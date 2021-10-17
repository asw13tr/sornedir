from django.contrib import admin
from .models import PageViewCounter


class HitCountAdmin(admin.ModelAdmin):
	list_display = ('url', 'counter')


admin.site.register(PageViewCounter, HitCountAdmin)