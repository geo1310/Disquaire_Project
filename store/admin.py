from django.contrib import admin
from .models import Booking, Contact, Album, Artist

from django.utils.safestring import mark_safe

# Register your models here.
'''
#faire apparaitre les données d'une table avec méthode register simple
admin.site.register(Album)
admin.site.register(Artist)
admin.site.register(Contact)
admin.site.register(Booking)
'''



#notation alternative avec décorateur
@admin.register(Album)
class ContactAdmin(admin.ModelAdmin):
    search_fields = ['reference', 'title'] # champ de recherche
    list_filter = ['available']  # menu filtres à droite

#-------------------Artistes et leurs Albums---------------------------

class AlbumArtistInline(admin.TabularInline):# Taburinline class pour affichage sous forme de liste
    verbose_name = "Disque"
    verbose_name_plural = "Disques"
    model = Album.artists.through # the query goes through an intermediate table.
    extra = 0
@admin.register(Artist)
class ArtistAdmin(admin.ModelAdmin):
    inlines = [AlbumArtistInline, ]

#------------------------------------------------------------------------

#-------------------Clients et leurs réservasions-------------------------

class BookingInline(admin.TabularInline):
    verbose_name = "Réservation"
    verbose_name_plural = "Réservations"
    model = Booking
    fieldsets = [
        (None, {'fields': ['album', 'contacted']})
        ] # list columns
    extra = 0 # pas de lignes additionnelles

    readonly_fields = ["created_at", "album"]

    #def has_add_permission(self, request): -> genere une erreur ???
        #return False

@admin.register(Contact)
class ContactAdmin(admin.ModelAdmin):
    inlines = [BookingInline,] # list of bookings made by a contact

#--------------------------------------------------------------------------

@admin.register(Booking)
class BookingAdmin(admin.ModelAdmin):
    list_filter = ['created_at', 'contacted'] # menu filtres à droite

    readonly_fields = ["created_at", "contact", 'album']

    def album_link(self, booking):
        url = "/admin"
        return mark_safe("<a href='{}'>{}</a>".format(url, booking.album.title))





'''
@admin.register(Booking)
class BookingAdmin(admin.ModelAdmin):
    list_filter = ['created_at', 'contacted']

class BookingInline(admin.TabularInline):
    model = Booking
    extra = 0
    fieldsets = [
        (None, {'fields': ['album', 'contacted']})
        ]
    verbose_name = "Réservation"
    verbose_name_plural = "Réservations"


@admin.register(Contact)
class ContactAdmin(admin.ModelAdmin):
    inlines = [BookingInline,]

class AlbumArtistInline(admin.TabularInline):
    model = Album.artists.through
    extra = 1
    verbose_name = "Disque"
    verbose_name_plural = "Disques"


@admin.register(Artist)
class ArtistAdmin(admin.ModelAdmin):
    inlines = [AlbumArtistInline,]

@admin.register(Album)
class AlbumAdmin(admin.ModelAdmin):
    search_fields = ['reference', 'title']
'''