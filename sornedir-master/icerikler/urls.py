from django.urls import path
from .views import * 

urlpatterns = [
    path('get-json-tags', get_json_tags, name='get_json_tags'),
    path('ajax-question-like', ajax_question_like, name='url_ajax_question_like'),
    path('ajax-answer-like', ajax_answer_like, name='url_ajax_answer_like'),
    path('soru-sor', create_soru, name='url_soru_sor'),
    path('gundem', view_gundem, name='url_gundem'),
    path('sorular', view_sorular, name='url_sorular'),
    path('soru/<int:id>/<slug:slug>', view_detay, name='url_soru_detay'),
    path('kategori/<slug:slug>', view_category_questions, name='url_category_questions'),
    path('etiket/<slug:slug>', view_tag_questions, name='url_tag_questions'), 



    path('test', view_test_questions, name='url_test_questions'), 
]
