from django import forms
from .models import *

class FormSoruSor(forms.ModelForm):
	tags_help_text = 'Konuya ait etiketleri aratın çıkan listeden konunuza en yakın etiketi seçmeye çalışın.'
	ajax_tags = forms.CharField(max_length=1000, required=False, label='Etiketler', help_text=tags_help_text)
	class Meta: 
		model = Sorular
		fields = [	'title',
					'category',
					'ajax_tags',
					'tags',
					'anonymous',
					'allow_anonymous',
					'allow_private_message',	
					'content' ]



class FormCevapVer(forms.ModelForm):
	class Meta:
		model = Cevaplar
		fields = [ 'content' ]

class FormCevapVerAnonymous(forms.ModelForm):
	class Meta:
		model = Cevaplar
		fields = [  'content', 'anonymous' ]
