from django import template
from ..models import PageViewCounter


register = template.Library()


@register.simple_tag(takes_context=True)
def pageviews(context):
    try:
        request = context['request']
        hit = PageViewCounter.objects.get(url=request.path)
        return hit.counter
    except PageViewCounter.DoesNotExist:
        return 0


@register.simple_tag
def pageviews_url(path):
    try:
        hit = PageViewCounter.objects.get(url=path)
        return hit.counter
    except PageViewCounter.DoesNotExist:
        return 0