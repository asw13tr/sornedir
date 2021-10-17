from django.db import models

class PageViewCounter(models.Model):
	created = models.DateTimeField(verbose_name='Eklenme', auto_now_add=True, editable=False)
	modified = models.DateTimeField(verbose_name='Güncellenme', auto_now=True, editable=False)
	url = models.CharField(verbose_name='Url', max_length=2000)
	counter = models.PositiveIntegerField(verbose_name='Görüntülenme', default=0)

class Meta:
	db_table = 'page_counter'
	verbose_name = 'Sayaç'
	verbose_name_plural = 'Sayaçlar'
	ordering = ('-created', '-modified')
	get_latest_by = 'created'