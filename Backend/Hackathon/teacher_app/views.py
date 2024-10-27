from django.shortcuts import redirect, render
from teacher_app.models import Teacher
from teacher_app.models import FAQ
from teacher_app.models import Students
import traceback


# Create your views here.

def gotoHome(request):
    return render(request, 'teacher/home.html')

def loginTeacher(request):
    return render(request, 'teacher/login.html')

def addFaqPage(request):
    return render(request, 'teacher/addFAQ.html')

def designView(request):
    return render(request, 'teacher/view.css')

def viewStudents(request):
    print("This is from view.....\n")
    student = Students.objects.all()
    print(student)
    return render(request, 'teacher/viewStudents.html', {'student': student})

def viewFAQ(request):
    print("This is from view.....\n")
    faq = FAQ.objects.all()
    print(faq)
    return render(request, 'teacher/viewFAQ.html', {'faq': faq})

def doLoginTeacher(request):
    print("This is login page")
    email = request.POST.get("email")
    password = request.POST.get("password")
    print(email)
    print(password)

    teacher_login = Teacher.objects.filter(email=email, password= password)

    if teacher_login.exists():
        return render(request, 'teacher/home.html')

    else:
        return render(request, 'teacher/login.html', {'message': 'Passwords do not match'})

def addFaq(request):
    question = request.POST.get("question")
    answer = request.POST.get("answer")

    FAQ_check = FAQ.objects.filter(question = question)

    if FAQ_check.exists():
        return render(request, 'teacher/addFAQ.html',{'message': 'This FAQ already exists'})

    else:
        try:
            faq = FAQ.objects.create(question=question, answer= answer)
            print("Data sent successfully")
            print(faq)
            return render(request, 'teacher/addFAQ.html', {'message': 'Created Successfully'})


        except:
            traceback.print_exc()
            print("Error")
            return render(request, 'teacher/addFAQ.html', {'message': 'An error occured'})

def deleteStudents(request):
    id = request.GET.get('id')
    print("This is get method")

    student = Students.objects.get(id=id).delete()
    return redirect('/teacher/viewStud')


def deleteFAQ(request):
    id = request.GET.get('id')
    print("This is get method")

    faq = FAQ.objects.get(id=id).delete()
    return redirect('/teacher/viewFAQ')
