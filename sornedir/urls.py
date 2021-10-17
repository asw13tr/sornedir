from django.contrib import admin
from django.urls import path, include
from main import views as main_app
from django.conf.urls.static import static
from django.conf import settings
import uye.views, uye.urls
import icerikler.urls

urlpatterns = [
    path('asw-panel/', admin.site.urls),
    path('', main_app.anasayfa, name='url_anasayfa'),
    path('', include(icerikler.urls)),
    path('giris-yap', uye.views.sayfa_uye_girisi, name='url_giris_yap'),
    path('kayit-ol', uye.views.sayfa_kayit_ol, name='url_kayit_ol'),
    path('cikis-yap', uye.views.sayfa_cikis_yap, name='url_cikis_yap'),
    path('uye/', include(uye.urls)),
]

#urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
