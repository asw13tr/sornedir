from .models import PageViewCounter
from django.db.models import F
from django.utils.deprecation import MiddlewareMixin

class PageViewCounterMiddleware(MiddlewareMixin): 

	def process_request(self, request, *args, **kwargs):
		hit, hit_created = PageViewCounter.objects.get_or_create(url=request.path)
		hit.counter = F('counter') + 1
		hit.save()

		return None

