import 'package:flutter/material.dart';
import 'package:keiler_parqueadero/Views/AddCarView.dart';
import 'package:keiler_parqueadero/Views/DeleteCarView.dart';
import 'package:keiler_parqueadero/Views/MainView.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PARQUEADERO KEII06',
        initialRoute: "MainView",
        routes: {
          "MainView": (BuildContext context) => const MainView(),
          "AddCar": (BuildContext context) => const AddCarView(),
          "DeleteCar": (BuildContext context) => const DeleteCarView(),
        });
  }
}
