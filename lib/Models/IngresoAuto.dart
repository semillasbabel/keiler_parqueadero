// ignore_for_file: file_names

import 'package:keiler_parqueadero/Models/BD.dart';

void ocuparparqueo(String placa, String modelo, String nombrecliente) {
  int parqueo = 0;
  listaParqueos[parqueo].ocuparParqueo(placa, modelo, nombrecliente);
}
