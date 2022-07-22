// ignore_for_file: file_names

import 'package:keiler_parqueadero/Models/BD.dart';

void ocuparparqueo(
    int parqueo, String placa, String modelo, String nombrecliente) {
  listaParqueos[parqueo].desocuparParqueo();
}
