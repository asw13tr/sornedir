from django.shortcuts import render, HttpResponse, redirect, get_object_or_404
from django.http import JsonResponse
from django.core import serializers
from django.contrib import messages
from django.db.models import Count
from .models import *
from .forms import *
from sornedir.functions import create_seo_title, tf_checkbox, get_IP
from .asw_datas import * 
from django.utils import timezone









def get_json_tags(request):
	items = dict()
	if not request.GET.get('q'):
		items['exists'] = False
	else:
		get_text = request.GET.get('q')
		get_ids = request.GET.get('ids')

		if len(get_ids) > 0:
			ids = get_ids.split('-')
			etiketler = Etiketler.objects.filter(name__icontains=get_text).exclude(id__in=ids)[0:15]
		else:
			etiketler = Etiketler.objects.filter(name__icontains=get_text)[0:15]
			

		if etiketler.exists():
			items['exists'] = True
			items['items'] = {}
			for etiket in etiketler:
				items['items'][ str(etiket.id) ] = [etiket.name, etiket.description]
		else:
			items['exists'] = False
	return JsonResponse(items)











### AJAX İŞLEMİ İLE SORULAN SORUYU BEĞENMEK
def ajax_question_like(request):
	datas = dict()
	if request.method=='GET':
		q_id = request.GET.get('id')
		question = Sorular.objects.get(id=q_id)

		if Soru_Oylari.objects.filter(question=question, user=request.user).exists():
			vote = Soru_Oylari.objects.get(question=question, user=request.user)
			vote.delete()
			datas['status'] = True
			datas['work'] = 'delete'
		else:
			Soru_Oylari.objects.create(question=question, user=request.user, vote=True)
			datas['status'] = True
			datas['work'] = 'insert'
	else:
		datas['status'] = False
		datas['work'] = 'no get'
	return JsonResponse(datas)










### AJAX İŞLEMİ İLE VERİLEN SORUYU BEĞENMEK
def ajax_answer_like(request):
	datas = dict()
	if request.method=='GET':
		a_id = request.GET.get('id')
		answer = Cevaplar.objects.get(id=a_id)

		if Cevap_Oylari.objects.filter(answer=answer, user=request.user).exists():
			vote = Cevap_Oylari.objects.get(answer=answer, user=request.user)
			vote.delete()
			datas['status'] = True
			datas['work'] = 'delete'
		else:
			Cevap_Oylari.objects.create(answer=answer, user=request.user, vote=True)
			datas['status'] = True
			datas['work'] = 'insert'
	else:
		datas['status'] = False
		datas['work'] = 'no get'
	return JsonResponse(datas)











def create_soru(request):
	data = { 'create_soru_form': FormSoruSor(), 'hide_sidebar':True }
	if request.method == "POST":
		soruForm = FormSoruSor(request.POST)
		if soruForm.is_valid():
			soru = soruForm.save(commit = False)
			soru.user = request.user
			soru.a_time = timezone.now()
			soru.save()
			soruForm.save_m2m()
			messages.success( request, 'Sorunuz başarıyla oluşturuldu. <br/>Şimdi yanıt bekleme zamanı. :)' )
			return redirect( soru.url_detail() )
		
	return render(request, 'icerikler/new_soru.html', data)











def view_gundem(request):
	sorular = Sorular.objects.filter(status=True).order_by('-a_time')
	asw_datas.update( {'sorular':sorular, 'big_title':'Gündemdeki Sorular'} )
	return render(request, 'icerikler/sorular.html', asw_datas)





def view_sorular(request):
	sorular = Sorular.objects.filter(status=True).order_by('-id')
	asw_datas.update( {'sorular':sorular, 'big_title':'Son Eklenen Sorular'} )
	return render(request, 'icerikler/sorular.html', asw_datas)


	








def view_detay(request, id, slug):
	soru = get_object_or_404(Sorular, pk=id)
	soru.views = soru.views + 1
	soru.save()

	

	cevaplar = Cevaplar.objects.filter(status=True, parent=None, question=soru).order_by('-id')

	go_post = False

	if request.user.is_authenticated: 
		if soru.allow_anonymous==True:
			cevapForm = FormCevapVerAnonymous()
		else:
			cevapForm = FormCevapVer()
	else:
		cevapForm = None

	
	
	if request.method == 'POST' and 'soru_yanitla' in request.POST:
		if soru.allow_anonymous == True:
			new_answer = FormCevapVerAnonymous(request.POST)
		else:
			new_answer = FormCevapVer(request.POST)
		answer = new_answer.save( commit = False)
		answer.user = request.user
		answer.question = soru
		answer.save()

		soru.a_time=timezone.now()
		soru.save()

		return redirect( soru.url_detail() )


	if request.method == 'POST' and 'cevap_yanitla' in request.POST:
		cevap_id = request.POST.get('cevap_id')
		ust_cevap = Cevaplar.objects.get(pk=cevap_id)
		if soru.allow_anonymous == True:
			new_answer = FormCevapVerAnonymous(request.POST)
		else:
			new_answer = FormCevapVer(request.POST)
		answer = new_answer.save( commit = False)
		answer.parent = ust_cevap
		answer.user = request.user
		answer.question = soru
		answer.save()
		return redirect( soru.url_detail() )
	


	asw_datas.update( { 'soru': soru, 'cevaplar': cevaplar, 'cevap_form': cevapForm } )
	return render(request, 'icerikler/soru_detay.html', asw_datas)












def view_category_questions(request, slug):
	kategori = Kategoriler.objects.get(seo_title=slug)
	sorular = Sorular.objects.filter(status=True, category=kategori)
	asw_datas.update( {'sorular':sorular} )
	return render(request, 'icerikler/sorular.html', asw_datas)








def view_tag_questions(request, slug):
	etiket = Etiketler.objects.get(seo_title=slug)
	sorular = Sorular.objects.filter(status=True, tags=etiket)
	asw_datas.update( {'sorular':sorular} )
	return render(request, 'icerikler/sorular.html', asw_datas)

	






def view_test_questions(request):
	sorular = Sorular.objects.filter(status=True).order_by('-a_time')
	asw_datas.update( {'sorular':sorular} )
	return render(request, 'icerikler/test.html', asw_datas)