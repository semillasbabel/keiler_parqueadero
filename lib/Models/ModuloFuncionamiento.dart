// ignore_for_file: file_names

//Función para validar si la placa ya existe
import 'package:keiler_parqueadero/Models/BD.dart';

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
  int espacioDisponible = 0;
  int contador = 1;

  for (var x in listaParqueos) {
    if (x.ocupado == false) {
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
    if (x.ocupado == false) {
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
