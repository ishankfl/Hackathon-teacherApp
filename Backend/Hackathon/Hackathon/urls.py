"""Hackathon URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
# from login_signup import views
from django.conf import settings
from django.conf.urls.static import static
from django.urls.conf import include

urlpatterns = [
    # path('', views.landingPage),
    # path('uploadimage/', views.gotoUploadImage),
    # path('viewdata', views.RegisterUserApiView.as_view()),
    # path('login', views.gotoLoginPage),
    # path('login', views.gotoLoginPage),
    # path('signup', views.gotoRegisterPage),
    # path("register", views.RegisterUserApiView.post),
    # path('superadmin/', admin.site.urls),
    # path('upload', include('login_signup.urls'), name="image-request"),
    # path('admin', include('adminapp.urls'), name="adminpage"),
    # path('adminlogin', include('adminapp.urls', name="adminlogin")),

    
    path('teacher/', include('teacher_app.urls'), name="teacher" )
]

