// ignore_for_file: file_names, avoid_print

import 'package:keiler_parqueadero/Models/BD.dart';
import 'package:keiler_parqueadero/Models/ModuloFuncionamiento.dart';

void ocuparparqueo(
    int datparqueo, String placa, String modelo, String nombrecliente) {
  int parqueo = datparqueo - 1;
  listaParqueos[parqueo].ocuparParqueo(placa, modelo, nombrecliente);
  mapaOcupados[placa] = parqueo;
  print("El parqueo #${parqueo + 1} fue ocupado");
}
