from django.db import models

# Create your models here.
'''

    un à un (one to one) : un objet A possède un objet B. Autrement dit, une tasse a une soucoupe et 
    une soucoupe appartient à une tasse. Dans notre projet, un album a une réservation et 
    une réservation appartient à un album.

    plusieurs à un (many to one) : un objet A possède plusieurs objets B et ce dernier n'appartient 
    qu'à l'objet A. Autrement dit, un service de table compte plusieurs assiettes et une assiette 
    appartient à un service. Dans notre projet, un contact a plusieurs réservations et une réservation 
    appartient à un contact.

    plusieurs à plusieurs (many to many) : un objet A possède plusieurs objets B et un objet B appartient
    à plusieurs objets A. Autrement dit, des assiettes ont plusieurs couverts et les couverts appartiennent
    à plusieurs assiettes. Dans notre projet, un album appartient à plusieurs artistes et un artiste possède 
    plusieurs albums.
'''

class Artist(models.Model):
    name = models.CharField('nom', max_length=200, unique=True)
    class Meta:
        verbose_name = "artiste"

    def __str__(self):
        return self.name

class Contact(models.Model):
    email = models.EmailField('email', max_length=100)
    name = models.CharField('nom', max_length=200)

    class Meta:
        verbose_name = "client"

    def __str__(self):
        return self.name


class Album(models.Model):
    reference = models.IntegerField('référence', null=True)
    created_at = models.DateTimeField('date de création', auto_now_add=True)
    available = models.BooleanField('disponible', default=True)
    title = models.CharField('titre', max_length=200)
    picture = models.TextField("URL de l'image", )
    artists = models.ManyToManyField(Artist, related_name='albums', blank=True)

    class Meta:
        verbose_name = "disque"

    def __str__(self):
        return self.title


class Booking(models.Model): #réservations
    created_at = models.DateTimeField("date d'envoi", auto_now_add=True)
    contacted = models.BooleanField('demande traitée ?', default=False)
    album = models.OneToOneField(Album, on_delete=models.CASCADE) #one to one
    contact = models.ForeignKey(Contact, on_delete=models.CASCADE) #many to one

    class Meta:
        verbose_name = "réservation"

    def __str__(self):
        return self.contact.name



