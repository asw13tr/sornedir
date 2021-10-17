from django.db import models
from sornedir.functions import create_seo_title
from ckeditor.fields import RichTextField
from django.contrib.auth import get_user_model
from django.urls import reverse
from django.contrib.staticfiles.templatetags.staticfiles import static
from stdimage import StdImageField

User = get_user_model()


# KATEGORİLER SINIFI
#######################################
class Kategoriler(models.Model):
	name = models.CharField(max_length=255, verbose_name='Kategori')
	seo_title = models.SlugField(max_length=255, unique=True, editable=False, blank=True, verbose_name='Kategori Kısa İsmi')
	photo		= StdImageField(upload_to='category-images', blank=True, variations={'thumbnail':(150, 150, True), 'medium':(300,300)}, verbose_name='Kategori Görseli')
	description = models.TextField(blank=True, verbose_name='Açıklama')
	status = models.BooleanField(default=True, verbose_name='Yayımla')
	c_time = models.DateTimeField(auto_now_add=True, verbose_name='Oluşturulma')

	def __str__(self):
		return self.name

	def save(self, *args, **kwargs):
		if not self.id: id = 0
		else: id = self.id
		self.seo_title = create_seo_title(self, title=self.name, model=Kategoriler, id=id)
		return super(Kategoriler, self).save(args, kwargs)  

	def count_questions(self):
		return Sorular.objects.filter(status=True, category=self).count()

	
	
	def url_questions(self):
		return reverse('url_category_questions', kwargs={ 'slug': self.seo_title })



	class Meta:
		db_table = 'categories'
		verbose_name = 'Kategori'
		verbose_name_plural = 'Kategoriler'











# ETİKETLER SINIFI
#######################################
class Etiketler(models.Model):
	name = models.CharField(max_length=255, verbose_name='Etiket')
	seo_title = models.SlugField(max_length=255, unique=True, editable=False, blank=True, verbose_name='Etiket Kısa İsmi')
	description = models.TextField(blank=True, verbose_name='Açıklama')
	status = models.BooleanField(default=True, verbose_name='Yayımla')
	c_time = models.DateTimeField(auto_now_add=True, verbose_name='Oluşturulma')

	def __str__(self):
		return self.name

	

	def save(self, *args, **kwargs):
		if not self.id: id = 0
		else: id = self.id
		self.seo_title = create_seo_title(self, title=self.name, model=Etiketler, id=id)
		return super(Etiketler, self).save(args, kwargs)  

	def url_questions(self):
		return reverse('url_tag_questions', kwargs={ 'slug': self.seo_title })

	class Meta:
		db_table = 'tags'
		verbose_name = 'Etiket'
		verbose_name_plural = 'Etiketler'




evet_hayir_opt = { '0':'Hayır', '1':'Evet' }
izinler_opt = { '0':'İzin Verme', '1':'İzin Ver' }
















# SORULAR SINIFI
#######################################
class Sorular(models.Model):
	user 		= models.ForeignKey(User, verbose_name='Soran', related_name='sorular', on_delete=models.CASCADE)
	category 	= models.ForeignKey('Kategoriler', verbose_name='Kategori', related_name='sorular', on_delete=models.CASCADE)
	tags  		= models.ManyToManyField('Etiketler', blank=True, verbose_name='Etiketler')
	title 		= models.CharField(max_length=255, verbose_name='Soru Başlığı' )
	seo_title 	= models.SlugField(max_length=255, editable=False, unique=True, blank=True, verbose_name='Soru Kısa İsmi')
	content 	= RichTextField(verbose_name='Soru Detayları')
	c_time 		= models.DateTimeField(auto_now_add=True, verbose_name='Oluşturulma')
	u_time 		= models.DateTimeField(auto_now=True, verbose_name='Güncellenme')
	a_time 		= models.DateTimeField(blank=True, null=True, default=None, verbose_name='Son Cevap')
	views 		= models.IntegerField(default=0, verbose_name='Okunma')
	like 		= models.IntegerField(default=0, verbose_name='Beğeni')
	anonymous 	= models.BooleanField(default=False, verbose_name='Gizli Kullanıcı Olarak Sor')
	status 		= models.BooleanField(default=True, verbose_name='Soruyu Yayımla')
	allow_anonymous = models.BooleanField(default=True, verbose_name='Gizli Kullanıcı Cevaplarını Kabul Et')
	allow_private_message = models.BooleanField(default=True, verbose_name='Özel Cevapları Kabul Et')
	ip 			= models.CharField(max_length=40, blank=True, verbose_name='Ip Adresi', editable=False)

	def __str__(self):
		return self.title

	def url_detail(self):
		return reverse( 'url_soru_detay', kwargs={'id': self.id, 'slug': self.seo_title} )





	def get_user_photo(self):
		if self.anonymous:
			if self.user.gender == 'E':
				return static('img/user-man.png')
			elif self.user.gender == 'K':
				return static('img/user-woman.png')
			else:
				return static('img/user-mask.png')
		else:
			return self.user.get_avatar()


	def get_username(self):
		if self.anonymous:
			return 'Gizli Kullanıcı'
		else:
			return self.user


	def get_user_profile(self):
		if self.anonymous:
			return '#'
		else:
			return self.user.url_profile()



	def save(self, *args, **kwargs):
		self.seo_title = create_seo_title(self, title=self.title, model=Sorular)
		return super(Sorular, self).save(args, kwargs)  

	class Meta:
		db_table = 'questions'
		verbose_name = 'Soru'
		verbose_name_plural = 'Sorular'













# CEVAPLAR SINIFI
#######################################
class Cevaplar(models.Model):
	user = models.ForeignKey(User, verbose_name='Cevaplayan', related_name='cevaplar', on_delete=models.CASCADE)
	question = models.ForeignKey('Sorular', verbose_name='Soru', related_name='cevaplar', on_delete=models.CASCADE)
	parent = models.ForeignKey('self', blank=True, null=True, default=None, verbose_name='Üst Cevap', on_delete=models.CASCADE)
	content = RichTextField(blank=True, verbose_name='Cevap')
	c_time = models.DateTimeField(auto_now_add=True, verbose_name='Oluşturulma')
	u_time = models.DateTimeField(auto_now=True, verbose_name='Güncellenme')
	status = models.BooleanField(default=True, verbose_name='Yayında')
	like = models.IntegerField(default=0, verbose_name='Beğeni')
	best_answer = models.BooleanField(default=False, verbose_name='En İyi Cevap')
	anonymous = models.BooleanField(default=False, verbose_name='Gizli Kullanıcı Olarak Cevapla')
	ip = models.CharField(max_length=40, blank=True, verbose_name='Ip Adresi', editable=False)

	def __str__(self):
		return self.content

	class Meta:
		db_table = 'answers'
		verbose_name = 'Cevap'
		verbose_name_plural = 'Cevaplar'

	def alt_cevaplar(self):
		return Cevaplar.objects.filter(status=True, parent=self)

	def is_alt_cevaplar(self):
		if self.parent is not None:
			return False
		return True
		

	def get_user_photo(self):
		if self.anonymous:
			if self.user.gender == 'E':
				return static('img/user-man.png')
			elif self.user.gender == 'K':
				return static('img/user-woman.png')
			else:
				return static('img/user-mask.png')
		else:
			return self.user.get_avatar()


	def get_username(self):
		if self.anonymous:
			return 'Gizli Kullanıcı'
		else:
			return self.user


	def get_user_profile(self):
		if self.anonymous:
			return '#'
		else:
			return self.user.url_profile()















class Soru_Oylari(models.Model):
	question = models.ForeignKey('Sorular', verbose_name='Soru', on_delete=models.CASCADE)
	user = models.ForeignKey(User, verbose_name='Oylayan', on_delete=models.CASCADE)
	vote = models.BooleanField(verbose_name='Oy', default=True)

	def __str__(self):
		return "{} soru için {} kullanıcısının oyu".format( self.question, self.user )

	class Meta:
		db_table = 'question_votes'
		verbose_name = 'Soru Oyu'
		verbose_name_plural = 'Soru Oyları'



class Cevap_Oylari(models.Model):
	answer = models.ForeignKey('Cevaplar', verbose_name='Cevap', on_delete=models.CASCADE)
	user = models.ForeignKey(User, verbose_name='Oylayan', on_delete=models.CASCADE)
	vote = models.BooleanField(verbose_name='Oy', default=True)

	class Meta:
		db_table = 'answer_votes'
		verbose_name = 'Cevap Oyu'
		verbose_name_plural = 'Cevap Oyları'