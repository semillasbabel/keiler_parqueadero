// ignore_for_file: unused_field, file_names

//Clase Parqueos con los metodos para ocupar, desocupar y obtener precio.
class Parqueos {
  bool _ocupado = false;
  String _placa = "";
  String _modelo = "";
  String _nombreCliente = "";
  late DateTime _fechaEntrada;
  late DateTime _fechaSalida;

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
