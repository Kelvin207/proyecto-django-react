from rest_framework import serializers

from .models import(
    Tipodocumento, Tipohabitacion, Genero, Cliente, Hotel, Habitacion, Reserva, Reservadetalle
)

class TipodocumentoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tipodocumento
        fields = '__all__'

class TipohabitacionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tipohabitacion
        fields = '__all__'

class GeneroSerializer(serializers.ModelSerializer):
    class Meta:
        model = Genero
        fields = '__all__'

class ClienteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cliente
        fields = '__all__'

class HotelSerializer(serializers.ModelSerializer):
    class Meta:
        model = Hotel
        fields = '__all__'

class HabitacionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Habitacion
        fields = '__all__'

class ReservaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Reserva
        fields = '__all__'

class ReservadetalleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Reservadetalle
        fields = '__all__'