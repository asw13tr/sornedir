from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.forms import UserChangeForm, UserCreationForm
from .models import *
from django import forms

# Kullanıcı seçme ekranı
class ASW_UserChangeForm(UserChangeForm):
    class Meta(UserChangeForm.Meta):
        # Yeni model
        model = Profile


class ASW_UserAdmin(UserAdmin):
    # Yeni Form
    form = ASW_UserChangeForm
    # Görünmesi gerekenler
    list_display = ('username', 'full_name', 'email', 'gender','job','birthday','location','views',)
 
    # Yeni alanlar
    fieldsets = UserAdmin.fieldsets + (
            (None, {'fields': ('gender','job','photo','birthday','location','about_us','website','facebook','twitter','google_plus','youtube','linkedin','instagram', )}),
    )



#Yeni Kullanıcı oluşturma sınıfı
class ASW_UserCreationForm(UserCreationForm):
    class Meta(UserCreationForm.Meta):
        # Yeni model
        model = Profile
 
    def clean_username(self):
        username = self.cleaned_data['username']
        try:
            Profile.objects.get(username=username)
        except Profile.DoesNotExist:
            return username
        raise forms.ValidationError(self.error_messages['duplicate_username'])

admin.site.register(Profile, ASW_UserAdmin)
admin.site.register(Meslekler)