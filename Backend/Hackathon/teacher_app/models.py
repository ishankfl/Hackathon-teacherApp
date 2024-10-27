from django.db import models

# Create your models here.

class Teacher(models.Model):

    name = models.CharField(max_length=50)
    email = models.EmailField(max_length=50)
    password = models.CharField(max_length=50)
    print("THis is models")
    print(name)
    print(email)
    print(password)


class FAQ(models.Model):
    question = models.CharField(max_length=200)
    answer = models.EmailField(max_length=500)
    print("This is models")
    print(question)
    print(answer)


class Students(models.Model):
    username = models.CharField(max_length=50)
    email = models.CharField(max_length=70)
    year = models.CharField(max_length=20)
    password = models.CharField(max_length=100)
    image = models.CharField(max_length=150)

    print("This is models")






