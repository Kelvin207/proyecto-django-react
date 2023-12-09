# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from cloudinary.models import CloudinaryField

class Tipodocumento(models.Model):
    descripcion = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_tipodocumento'

    def __str__(self):
        return self.descripcion


class Tipohabitacion(models.Model):
    descripcion = models.CharField(max_length=100, blank=True, null=True)
    precio = models.DecimalField(max_digits=5, decimal_places=2, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_tipohabitacion'

    def __str__(self):
        return self.descripcion

class Genero(models.Model):
    descripcion = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_genero'
    
    def __str__(self):
        return self.descripcion

class Cliente(models.Model):
    numero_documento = models.CharField(max_length=12, blank=True, null=True)
    apellido_paterno = models.CharField(max_length=100, blank=True, null=True)
    apellido_materno = models.CharField(max_length=100, blank=True, null=True)
    nombres = models.CharField(max_length=100, blank=True, null=True)
    celular = models.CharField(max_length=15, blank=True, null=True)
    correo = models.CharField(max_length=50, blank=True, null=True)
    fecha_nacimiento = models.DateField(blank=True, null=True)
    genero = models.ForeignKey('Genero', models.DO_NOTHING)
    tipodocumento = models.ForeignKey('Tipodocumento', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tbl_cliente'

    def __str__(self):
        return self.nombres

class Hotel(models.Model):
    nombre = models.CharField(max_length=300)
    numero_habitaciones = models.IntegerField(blank=True, null=True)
    direccion = models.CharField(max_length=100, blank=True, null=True)
    telefono = models.CharField(max_length=15, blank=True, null=True)
    #imagen = CloudinaryField('image',default='')
    imagen = models.CharField(max_length=255, blank=True, null=True)
    descripcion = models.TextField(blank=True, null=True)
    calificacion = models.IntegerField(blank=True, null=True)
    localizacion = models.CharField(max_length=500, blank=True, null=True)
    precio_minimo = models.FloatField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_hotel'
    
    def __str__(self):
        return self.nombre

class Habitacion(models.Model):
    numero = models.IntegerField(blank=True, null=True)
    estado = models.IntegerField(blank=True, null=True)
    hotel = models.ForeignKey('Hotel', models.DO_NOTHING)
    tipohabitacion = models.ForeignKey('Tipohabitacion', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tbl_habitacion'

    def __str__(self):
        return self.numero

class Reserva(models.Model):
    fecha_reserva = models.DateField(blank=True, null=True)
    fecha_inicio = models.DateField(blank=True, null=True)
    fecha_fin = models.DateField(blank=True, null=True)
    estado = models.IntegerField(blank=True, null=True)
    precio_total = models.FloatField(blank=True, null=True)
    cliente = models.ForeignKey('Cliente', models.DO_NOTHING)
    hotel = models.ForeignKey('Hotel', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'tbl_reserva'

    def __str__(self):
        return self.id


class Reservadetalle(models.Model):
    reserva = models.ForeignKey('Reserva', models.DO_NOTHING)
    habitacion = models.ForeignKey('Habitacion', models.DO_NOTHING)
    precio = models.CharField(max_length=45, blank=True, null=True)
    cantidad = models.CharField(max_length=45, blank=True, null=True)
    subtotal = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'tbl_reservadetalle'

    def __str__(self):
        return self.reserva



