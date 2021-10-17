from django.db import models
from django.contrib.auth.models import AbstractUser
from stdimage import StdImageField
from ckeditor.fields import RichTextField
from django.contrib.staticfiles.templatetags.staticfiles import static
from django.urls import reverse


gender_options = ( ('B', 'Belirtilmemiş'), ('E', 'Erkek'), ('K', 'Kadın') )
class Profile(AbstractUser):
	email 		= models.EmailField(unique=True, verbose_name='E-posta Adresi')
	gender 		= models.CharField(max_length=1, choices=gender_options, blank=True, null=True, default='B', verbose_name='Cinsiyet')
	job			= models.ForeignKey('Meslekler', related_name='meslek', blank=True, verbose_name='Meslek', on_delete=models.SET_NULL, null=True)
	photo		= StdImageField(upload_to='user-images', blank=True, variations={'thumbnail':(150, 150, True), 'medium':(300,300)}, verbose_name='Profil Fotoğrafı')
	birthday 	= models.DateField(blank=True, null=True, verbose_name='Doğum Tarihi')
	location	= models.CharField(max_length=255, blank=True, verbose_name='Yaşadığınız Yer')
	about_us	= RichTextField(blank=True, verbose_name='Hakkınızda')
	website 	= models.URLField(max_length=200, blank=True, verbose_name='Website Adresi')
	facebook 	= models.URLField(max_length=255, blank=True, verbose_name='Facebook Profil Adresi')
	twitter 	= models.URLField(max_length=255, blank=True, verbose_name='Twitter Profil Adresi')
	google_plus = models.URLField(max_length=255, blank=True, verbose_name='Google+ Profil Adresi') 
	youtube 	= models.URLField(max_length=255, blank=True, verbose_name='Youtube Profil Adresi')
	linkedin 	= models.URLField(max_length=255, blank=True, verbose_name='Linkedin Profil Adresi')
	instagram 	= models.CharField(max_length=255, blank=True, verbose_name='İnstagram Kullanıcı Adı')
	views		= models.IntegerField(default=0, editable=False, verbose_name='Görüntülenme')

	def __str__(self):
		return self.username


	def get_avatar(self):
		url = static('img/user-mask.jpg')
		if self.photo:
			url = self.photo.thumbnail.url
		else:
			if self.gender == 'E':
				url = static('img/user-man.png')
			elif self.gender == 'K':
				url = static('img/user-woman.png')
			else:
				url = static('img/user-mask.jpg')
		return url


	def full_name(self):
			return '{} {}'.format(self.first_name, self.last_name)


	def gender_value(self):
		if self.gender == 'E':
			return 'Erkek'
		elif self.gender == 'K':
			return 'Kadın'
		else:
			return 'Belirtilmemiş'


	def url_profile(self):
		return reverse( 'url_uye_profili', kwargs={'username': self.username} )


	class Meta:
		db_table = 'uye_bilgileri'
		verbose_name = 'Üye Bilgisi'
		verbose_name_plural = 'Üye Bilgileri'






class Meslekler(models.Model):
	name = models.CharField(max_length=255, verbose_name='Meslek Adı')
	status = models.NullBooleanField(blank=True, default=True, verbose_name='Görüntülenebilir')

	def __str__(self):
		return self.name

	class Meta:
		db_table = 'meslekler'
		verbose_name = 'Meslek'
		verbose_name_plural = 'Meslekler'
		ordering = ['name']
