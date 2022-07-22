// ignore_for_file: file_names

import 'package:keiler_parqueadero/Models/ModuloFuncionamiento.dart';

//Función para inicializar la lista de Objetos Parqueos
void iniciarDatosController() {
  iniciarBD();
}

//Función para validar si la placa ingresada ya existe
bool valiPlacaController(String placa) {
  return validarExistenciaPlaca(placa);
}

//Función para validar si hay parqueos disponibles
int disponibilidadController() {
  return cantDesocupados();
}

//Función para ingresar un auto nuevo al parqueadero
void nuevoAutoController(String datplaca, String datmodelo, String datpersona) {
  EntradaAuto(datplaca, datmodelo, datpersona);
}

//Función para obtener una lista de los parqueos ocupados
List listaOcupadosController() {
  return ListaOcupados;
}

void llenarlistOcupadosController() {
  LlenarListaOcupados();
}

//Función para obtener el precio por parqueo del auto seleccionado
int obtPrecioAutoController(String llave) {
  return ObtPrecio(llave);
}

//Función para obtener el nombre del cliente y el modelo del auto seleccionado
List infoClienteController(String llave) {
  return InfoCliente(llave);
}

//Función para realizar el pago del parqueo y desocupar el espacio de parqueo
void parqueoPagadoController(String llave) {
  Desocuparparqueo(llave);
}

//-------------------------------------------------------------------