// ignore_for_file: file_names, non_constant_identifier_names

//Función para validar si la placa ya existe
import 'package:keiler_parqueadero/Models/BD.dart';
import 'package:keiler_parqueadero/Models/IngresoAuto.dart';
import 'package:keiler_parqueadero/Models/SalidaAuto.dart';

//Declaración de Variables Gobales
var listaOcupados = <String>[];
var mapaOcupados = {};
var ListaInfoCliente = <String>["", ""];
int espacioDisponible = 0;

//-------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
//                                  FUNCIONES PRINCIPALES
//-------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
//Función para crear los objetos de parqueo y llenar la lista con los objetos creados
void iniciarBD() {
  creacionParqueos();
}

//Función para ocupar un nuevo parqueo
void EntradaAuto(String datplaca, String datmodelo, String datpersona) {
  ocuparparqueo(obtenerEspacioDisponible(), datplaca, datmodelo, datpersona);
}

//
void SalidaAuto(String placa) {
  liberarparqueo(mapaOcupados[placa], placa);
}

//Función para obtener el precio del parqueo por medio de la placa seleccionada por la persona
int obtenerPrecioParqueo(String placa) {
  return listaParqueos[mapaOcupados[placa]].obtenerPrecio();
}

//-------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
//                                  FUNCIONES SECUNDARIAS
//-------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------

//Función para validar si la placa ya fue anteriormente ingresada
bool validarExistenciaPlaca(String placa) {
  bool continuar = true;

  for (var x in listaParqueos) {
    if (x.placa == placa) {
      continuar = false;
    }
  }

  return continuar;
}

//Función para obtener el primer espacio disponible
int obtenerEspacioDisponible() {
  espacioDisponible = 0;
  int contador = 1;

  for (var x in listaParqueos) {
    if (!x.ocupado) {
      if (espacioDisponible == 0) {
        espacioDisponible = contador;
      }
    }
    contador++;
  }

  return espacioDisponible;
}

//Funcion para obtener la cantidad de Parqueos desocupados
int cantDesocupados() {
  // InitListaParqueos();

  int espacios = 0;
  int contador = 1;
  var listadesocupados = <int>[];

  for (var x in listaParqueos) {
    if (!x.ocupado) {
      listadesocupados.add(contador);
    }
    contador++;
  }

  if (listadesocupados.isEmpty) {
    espacios = 0;
  } else {
    espacios = listadesocupados.length;
  }

  return espacios;
}

//Función para inicializar y llenar la listaOcupados
void llenarListaOcupados() {
  listaOcupados.clear();
  mapaOcupados.forEach((key, value) {
    listaOcupados.add(key);
  });
}

//Función para obtener la información del cliente a la hora de cobrar
List obtenerInfoCliente(String placa) {
  ListaInfoCliente[0] = listaParqueos[mapaOcupados[placa]].nombre;
  ListaInfoCliente[1] = listaParqueos[mapaOcupados[placa]].modelo;
  return ListaInfoCliente;
}
