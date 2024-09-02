from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('Articles/', views.Articles.as_view)
]