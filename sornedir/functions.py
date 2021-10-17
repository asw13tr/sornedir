from django.utils.text import slugify

def get_IP(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip



def create_seo_title(self, title, model, id=0): 
		slug = slugify( title.replace('ı', 'i').replace('&','ve') )
		unique_slug = slug
		counter = 1
		"""
		if id > 0:
			while model.objects.filter(seo_title=unique_slug, id__exact=id).exists():
				unique_slug = '{}-{}'.format(slug, counter)
				counter += 1
		else:
			while model.objects.filter(seo_title=unique_slug).exists():
				unique_slug = '{}-{}'.format(slug, counter)
				counter += 1
		"""
		return unique_slug 


def tf_checkbox(self, key):
	if key == 'on':
		return True
	else:
		return False
