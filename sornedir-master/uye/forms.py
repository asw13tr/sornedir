from django import forms
from captcha.fields import ReCaptchaField
from .models import *


class UyeGirisFormu(forms.Form):
	username = forms.CharField(max_length=100, label='Kullanıcı Adı')
	password = forms.CharField(max_length=100, label='Kullanıcı Şifresi', widget=forms.PasswordInput())
	#captcha = ReCaptchaField(label='Güvenlik Kontrolü')


from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from django.contrib.auth import get_user_model
User = get_user_model()

class UyeKayitFormu(UserCreationForm):

	email = forms.EmailField(max_length=160, required=True)
	#captcha = ReCaptchaField(label='Güvenlik Kontrolü')

	class Meta:
		model = User
		fields = ('username', 'email', 'job', 'password1', 'password2')



class UyeGuncellemeFormu(forms.ModelForm):
	class Meta:
		model = User
		fields = ('first_name', 'last_name', 'email', 'gender', 'job', 'photo', 'birthday', 'location', 'about_us', 'website', 'facebook', 'twitter', 'google_plus', 'youtube', 'linkedin', 'instagram',)

















