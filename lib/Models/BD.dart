// ignore_for_file: unused_field, file_names

//Declaración de Variables Globales
import 'dart:ffi';

bool inicializador = false;
var listaParqueos = <Parqueos>[];

//Clase Parqueos con los metodos para ocupar, desocupar y obtener precio.
class Parqueos {
  bool _ocupado = false;
  String _placa = "";
  String _modelo = "";
  String _nombreCliente = "";
  late DateTime _fechaEntrada;
  late DateTime _fechaSalida;

  //Metodo para crear los objetos de tipo Parqueos y llenar con ellos la lista
  void creacionParqueos() {
    if (inicializador == false) {
      var p1 = Parqueos();
      var p2 = Parqueos();
      var p3 = Parqueos();
      var p4 = Parqueos();
      var p5 = Parqueos();
      var p6 = Parqueos();
      var p7 = Parqueos();
      var p8 = Parqueos();
      var p9 = Parqueos();
      var p10 = Parqueos();
      var p11 = Parqueos();
      var p12 = Parqueos();
      var p13 = Parqueos();
      var p14 = Parqueos();
      var p15 = Parqueos();
      var p16 = Parqueos();
      var p17 = Parqueos();
      var p18 = Parqueos();
      var p19 = Parqueos();
      var p20 = Parqueos();

      listaParqueos.add(p1);
      listaParqueos.add(p2);
      listaParqueos.add(p3);
      listaParqueos.add(p4);
      listaParqueos.add(p5);
      listaParqueos.add(p6);
      listaParqueos.add(p7);
      listaParqueos.add(p8);
      listaParqueos.add(p9);
      listaParqueos.add(p10);
      listaParqueos.add(p11);
      listaParqueos.add(p12);
      listaParqueos.add(p13);
      listaParqueos.add(p14);
      listaParqueos.add(p15);
      listaParqueos.add(p16);
      listaParqueos.add(p17);
      listaParqueos.add(p18);
      listaParqueos.add(p19);
      listaParqueos.add(p20);
      inicializador = true;
    }
  }

  //Gets para obtener los datos
  bool get ocupado {
    return _ocupado;
  }

  String get placa {
    return _placa;
  }

  String get modelo {
    return _modelo;
  }

  String get nombre {
    return _nombreCliente;
  }

  //Metodo para ocupar los parqueos
  void ocuparParqueo(
      String datplaca, String datmodelo, String datnombreCliente) {
    _ocupado = true;
    _placa = datplaca;
    _modelo = datmodelo;
    _nombreCliente = datnombreCliente;
    _fechaEntrada = DateTime.now();
  }

  //Metodo para desocupar los parqueos
  void desocuparParqueo() {
    _ocupado = false;
    _placa = "";
    _modelo = "";
    _nombreCliente = "";
    _fechaEntrada = DateTime.now();
    _fechaSalida = DateTime.now();
  }

  //Metodo para obtener el precio de los parqueos
  int obtenerPrecio() {
    _fechaSalida = DateTime.now();
    int precio = 0;
    int horas = _fechaSalida.hour - _fechaEntrada.hour;
    int minutos = _fechaSalida.minute - _fechaEntrada.minute;

    precio = precio + horas;

    if (minutos >= 30) {
      precio = precio + 1;
    }

    return precio;
  }
}
