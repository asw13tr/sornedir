
from django.shortcuts import render, redirect
from django.contrib.auth import logout, login, authenticate
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth import get_user_model
User = get_user_model()
from django.contrib import messages
from .forms import *
from .models import *
from icerikler.models import * 


#ÜYE GİRİŞ SAYFASI
def sayfa_uye_girisi(request):
	if request.user.is_authenticated:
		return redirect('/')
	else:
		if request.method == "POST":
			form = UyeGirisFormu(request.POST or None)
			if form.is_valid():
				username = form.cleaned_data.get('username')
				password = form.cleaned_data.get('password')
				user = authenticate(request, username=username, password=password)
				if user is not None:
					login(request, user)
					return redirect('/')
		else:
			form = UyeGirisFormu()

		datas = {  'form': form, 'meta_title': 'Üye Girişi Yap', 'hide_sidebar': True  }
		return render(request, 'uye/giris_form.html', datas)


#KAYIT FORMU SAYFASI
def sayfa_kayit_ol(request):
	if request.user.is_authenticated:
		return redirect('/')
	else:
		if request.method == "POST":
			form = UyeKayitFormu(request.POST)
			#E-POSTA KONTROLÜ
			#eposta = request.POST.get('email')
			#uye = Profile.objects.filter(email=eposta)
			#if len(uye) > 0:
			#	messages.error(request, 'Aynı e-posta adresi ile kayıtlı bir kullanıcı zaten var.<br>Şifrenizi unuttuysanız Şifremi Unuttum sayfasına bir gözatın.')
			#	return redirect('url_kayit_ol')
			#else:
			if form.is_valid():
				form.save()
				username = form.cleaned_data.get('username')
				password = form.cleaned_data.get('password1')
				user = authenticate(username=username, password=password)
				login(request, user)
				messages.success(request, 'Başarıyla Kayıt Oldunuz.<br>Şimdi dilerseniz aşağıdaki bilgilerinizi doldurup sizi daha iyi tanımamızı sağlayabilirsiniz.')
				return redirect('uye_profil_guncelle')

		else:
			form = UyeKayitFormu()
		datas = {  'form': form , 'meta_title': 'Kayıt Ol', 'hide_sidebar': True }
		return render(request, 'uye/kayit_form.html', datas)


#ÇIKIŞ YAPMA SAYFASI
def sayfa_cikis_yap(request):
	if request.method == "POST":
		logout(request)
		return redirect('/')
	else:
		datas = { 'meta_title': 'Çıkış Yap', 'hide_sidebar': True }
		return render(request, 'uye/cikis_form.html', datas)


# ÜYENİN KENDİ PROFİL SAYFASI
from sornedir.functions import get_IP
def sayfa_profilim(request):
	ip_adresim = get_IP(request)
	datas = { 'meta_title': 'Profilim', 'profil': request.user, 'ip': ip_adresim, 'hide_sidebar': True  }
	return render(request, 'uye/profilim.html', datas)


# ÜYENİN KENDİ PROFİL SAYFASI
def sayfa_uye_profili(request, username):
	profil = User.objects.get(username=username)
	datas = { 'meta_title': 'Profilim', 'profil': profil, 'hide_sidebar': True  }
	return render(request, 'uye/profil.html', datas)






# ÜYENİN KENDİ PROFİL SAYFASI
def sayfa_profil_sorular(request, username):
	profil = User.objects.get(username=username)
	sorular = Sorular.objects.filter(user=profil).exclude(anonymous=True).order_by('-id')
	datas = { 'meta_title': 'Profilim', 'profil': profil, 'hide_sidebar': True, 'sorular':sorular  }
	return render(request, 'uye/sorular.html', datas)








# ÜYENİN PROFİL GÜNCELLEME SAYFASI
def sayfa_profil_guncelle(request):

	if request.method == "POST":
		form = UyeGuncellemeFormu(request.POST, request.FILES or None, instance=request.user)
		if form.is_valid():
			form.save()
			messages.success(request, 'Profiliniz Güncellendi.')
		else:
			messages.danger(request, 'Bir sorun oluştu. Profiliniz Güncellenmedi.')
		return redirect('uye_profil_guncelle')
	else:
		form = UyeGuncellemeFormu(instance=request.user)
	datas = { 'form': form, 'meta_title': 'Profilini Güncelle', 'hide_sidebar': True  }
	return render(request, 'uye/profil_guncelle_form.html', datas)