# Generated by Django 4.1.7 on 2023-05-30 18:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('teacher_app', '0002_faq'),
    ]

    operations = [
        migrations.RenameField(
            model_name='faq',
            old_name='answers',
            new_name='answer',
        ),
    ]
