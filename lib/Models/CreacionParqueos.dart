// ignore_for_file: file_names

//Creación de los objetos de tipo Parqueos
import 'package:keiler_parqueadero/Models/BD.dart';

//Declaración de Variables Globales
bool inicializador = false;

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

// Lista que contendra los objetos de tipo Parqueos
var listparqueos = <Parqueos>[];

// Función para añadir los objetos de Parqueos a la lista listparqueos
void initListaParqueos() {
  if (inicializador == false) {
    listparqueos.add(p1);
    listparqueos.add(p2);
    listparqueos.add(p3);
    listparqueos.add(p4);
    listparqueos.add(p5);
    listparqueos.add(p6);
    listparqueos.add(p7);
    listparqueos.add(p8);
    listparqueos.add(p9);
    listparqueos.add(p10);
    listparqueos.add(p11);
    listparqueos.add(p12);
    listparqueos.add(p13);
    listparqueos.add(p14);
    listparqueos.add(p15);
    listparqueos.add(p16);
    listparqueos.add(p17);
    listparqueos.add(p18);
    listparqueos.add(p19);
    listparqueos.add(p20);
    inicializador = true;
  }
}
