from django.urls import path
from .views import *
import main.views as main_app

urlpatterns = [
    path('', sayfa_profilim, name='url_profilim'),
    path('guncelle', sayfa_profil_guncelle, name='uye_profil_guncelle'),
    path('sorular/<str:username>', sayfa_profil_sorular, name='uye_profil_sorular'),
    path('<str:username>', sayfa_uye_profili, name='url_uye_profili'),
]
