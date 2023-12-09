from django.contrib import admin

from .models import(
    Tipodocumento, Tipohabitacion, Genero, Cliente, Hotel, Habitacion, Reserva, Reservadetalle
)


admin.site.register(Tipodocumento)
admin.site.register(Tipohabitacion)
admin.site.register(Genero)
admin.site.register(Cliente)
admin.site.register(Hotel)
admin.site.register(Habitacion)
admin.site.register(Reserva)
admin.site.register(Reservadetalle)

# Register your models here.
