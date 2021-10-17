from .models import *

def asw_kategoriler():
	return Kategoriler.objects.filter(status=True).order_by('-id')





asw_datas = { 'asw_kategoriler':asw_kategoriler }
