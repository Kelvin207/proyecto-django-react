from rest_framework import generics

from .models import(
    Tipodocumento, Tipohabitacion, Genero, Cliente, Hotel, Habitacion, Reserva, Reservadetalle
)

from .serializers import(
    TipodocumentoSerializer, TipohabitacionSerializer, GeneroSerializer, ClienteSerializer, HotelSerializer, HabitacionSerializer, ReservaSerializer, ReservadetalleSerializer
)

#class TipodocumentoView(generics.ListCreateAPIView):
#    queryset = Tipodocumento.objects.all()
#    serializer_class = TipodocumentoSerializer

class TipohabitacionView(generics.ListCreateAPIView):
    queryset = Tipohabitacion.objects.all()
    serializer_class = TipohabitacionSerializer

class GeneroView(generics.ListCreateAPIView):
    queryset = Genero.objects.all()
    serializer_class = GeneroSerializer

class ClienteView(generics.ListCreateAPIView):
    queryset = Cliente.objects.all()
    serializer_class = ClienteSerializer

class HotelView(generics.ListCreateAPIView):
    queryset = Hotel.objects.all()
    serializer_class = HotelSerializer

class HabitacionView(generics.ListCreateAPIView):
    queryset = Habitacion.objects.all()
    serializer_class = HabitacionSerializer

class ReservaView(generics.ListCreateAPIView):
    queryset = Reserva.objects.all()
    serializer_class = ReservaSerializer

class ReservadetalleView(generics.ListCreateAPIView):
    queryset = Reservadetalle.objects.all()
    serializer_class = ReservadetalleSerializer

# RetrieveUpdateDestroyAPIView

class TipodocumentoDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Tipodocumento.objects.all()
    lookup_url_kwarg = 'tipodocumento_id'
    serializer_class = TipodocumentoSerializer

class TipohabitacionDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Tipohabitacion.objects.all()
    lookup_url_kwarg = 'tipohabitacion_id'
    serializer_class = TipohabitacionSerializer

class GeneroDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Genero.objects.all()
    lookup_url_kwarg = 'genero_id'
    serializer_class = GeneroSerializer

class ClienteDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Cliente.objects.all()
    lookup_url_kwarg = 'cliente_id'
    serializer_class = ClienteSerializer

class HotelDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Hotel.objects.all()
    lookup_url_kwarg = 'hotel_id'
    serializer_class = HotelSerializer

class HabitacionDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Habitacion.objects.all()
    lookup_url_kwarg = 'habitacion_id'
    serializer_class = HabitacionSerializer

class ReservaDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Reserva.objects.all()
    lookup_url_kwarg = 'reserva_id'
    serializer_class = ReservaSerializer

class ReservadetalleDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Reservadetalle.objects.all()
    lookup_url_kwarg = 'reservadetalle_id'
    serializer_class = ReservadetalleSerializer


"""endpoint para subir imagenes"""
from rest_framework.parsers import MultiPartParser, JSONParser
from rest_framework.views import APIView
from rest_framework.response import Response

import cloudinary.uploader

class UploadHotelImageView(APIView):
    parser_classes = (
        MultiPartParser,
        JSONParser
    )


@staticmethod
def post(request):
    file = request.data.get('hotel_img')
    upload_data = cloudinary.uploader.upload(file)
    context = {
        'image_url': upload_data['url']
    }
    return Response(context, status = 201)


"""viewsets"""
from rest_framework import viewsets

class TipodocumentoView(viewsets.ModelViewSet):
    queryset = Tipodocumento.objects.all()
    serializer_class = TipodocumentoSerializer
    

