// ignore_for_file: non_constant_identifier_names, file_names

//Función para inicializar la lista de Objetos Parqueos
void InitParqueosController() {
  InitListaParqueos();
}

//Función para validar si la placa ingresada ya existe
bool ValiPlacaController(String placa) {
  return ValiPlaca(placa);
}

//Función para validar si hay parqueos disponibles
int DisponibilidadController() {
  return CantDesocupados();
}

//Función para ingresar un auto nuevo al parqueadero
void NuevoAutoController(String datplaca, String datmodelo, String datpersona) {
  Ocuparparqueo(datplaca, datmodelo, datpersona);
}

//Función para obtener una lista de los parqueos ocupados
List ListaOcupadosController() {
  return ListaOcupados;
}

void llenarlistOcupadosController() {
  LlenarListaOcupados();
}

//Función para obtener el precio por parqueo del auto seleccionado
int ObtPrecioAuto(String llave) {
  return ObtPrecio(llave);
}

//Función para obtener el nombre del cliente y el modelo del auto seleccionado
List InfoClienteController(String llave) {
  return InfoCliente(llave);
}

//Función para realizar el pago del parqueo y desocupar el espacio de parqueo
void ParqueoPagadoController(String llave) {
  Desocuparparqueo(llave);
}

//-------------------------------------------------------------------