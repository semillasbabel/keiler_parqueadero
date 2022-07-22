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
