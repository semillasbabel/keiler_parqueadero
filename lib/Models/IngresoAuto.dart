// ignore_for_file: file_names

import 'package:keiler_parqueadero/Models/BD.dart';
import 'package:keiler_parqueadero/Models/ModuloFuncionamiento.dart';

void ocuparparqueo(
    int parqueo, String placa, String modelo, String nombrecliente) {
  listaParqueos[parqueo].ocuparParqueo(placa, modelo, nombrecliente);
  mapaOcupados[placa] = parqueo;
}
