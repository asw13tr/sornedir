from icerikler.models import *

def icerikler(request):
	kategoriler = Kategoriler.objects.filter(status=True).order_by('name')
	son_sorular = Sorular.objects.filter(status=True).order_by('-id')
	gundem_sorulari = Sorular.objects.filter(status=True).order_by('-a_time')
	return {
		'asw_categories': kategoriler, 
		'asw_last_questions':son_sorular, 
		'asw_actual_questions':gundem_sorulari
		}

