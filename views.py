from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.


def index(request):
    return HttpResponse('Это главная страница')

def page_one(request):
    return HttpResponse('Это следующая страница')