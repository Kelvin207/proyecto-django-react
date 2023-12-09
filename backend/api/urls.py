from django.urls import path, include
from rest_framework.routers import DefaultRouter

from . import views

router = DefaultRouter()

router.register(r'tipodocumento', views.TipodocumentoView, basename = 'tipodocumento')

urlpatterns = [
    #path('tipodocumento', views.TipodocumentoView.as_view()),
    path('',include(router.urls)),
    path('tipohabitacion', views.TipohabitacionView.as_view()),
    path('genero', views.GeneroView.as_view()),
    path('cliente', views.ClienteView.as_view()),
    path('hotel', views.HotelView.as_view()),
    path('habitacion', views.HabitacionView.as_view()),
    path('reserva', views.ReservaView.as_view()),
    path('reservadetalle', views.ReservadetalleView.as_view()),

    path('tipodocumento/<int:tipodocumento_id>', views.TipodocumentoDetailView.as_view()),
    path('tipohabitacion/<int:tipohabitacion_id>', views.TipohabitacionDetailView.as_view()),
    path('genero/<int:genero_id>', views.GeneroDetailView.as_view()),
    path('cliente/<int:cliente_id>', views.ClienteDetailView.as_view()),
    path('hotel/<int:hotel_id>', views.HotelDetailView.as_view()),    
    path('habitacion/<int:habitacion_id>', views.HabitacionDetailView.as_view()),
    path('reserva/<int:reserva_id>', views.ReservaDetailView.as_view()),
    path('reservadetalle/<int:reservadetalle_id>', views.ReservadetalleDetailView.as_view()),

    path('hotel/uploadimage', views.UploadHotelImageView.as_view())
    
]