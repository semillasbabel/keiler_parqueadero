// ignore_for_file: file_names, avoid_print

import 'package:keiler_parqueadero/Models/BD.dart';
import 'package:keiler_parqueadero/Models/ModuloFuncionamiento.dart';

void liberarparqueo(int parqueo, String placa) {
  listaParqueos[parqueo].desocuparParqueo();
  mapaOcupados.remove(placa);
  print("El parqueo #$parqueo fue desocupado");
}
