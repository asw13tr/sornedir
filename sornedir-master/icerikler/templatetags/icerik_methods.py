from django import template
register = template.Library()
from ..models import *

@register.filter(name='add_question_liked_class')
def add_question_liked_class(question, user):
	if Soru_Oylari.objects.filter(question=question, user=user):
		return 'liked'
	else:
		return ''


@register.filter(name='add_answer_liked_class')
def add_answer_liked_class(answer, user):
	if Cevap_Oylari.objects.filter(answer=answer, user=user):
		return 'liked'
	else:
		return ''

