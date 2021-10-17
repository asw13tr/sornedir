from django.shortcuts import render
from icerikler.forms import *

def anasayfa(request):
	return render(request, 'main/index.html')