# Generated by Django 2.0.1 on 2018-01-13 18:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('uye', '0003_profile_job'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='meslekler',
            options={'ordering': ['name'], 'verbose_name': 'Meslek', 'verbose_name_plural': 'Meslekler'},
        ),
    ]
