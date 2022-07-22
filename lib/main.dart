import 'package:flutter/material.dart';
import 'package:keiler_parqueadero/Views/MainView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'PARQUEADERO KEII06',
        initialRoute: "MainView",
        routes: {
          "MainView": (BuildContext context) => const MainView(),
          "AddCar": (BuildContext context) => const AddCar(),
          "DeleteCar": (BuildContext context) => const DeleteCar(),
        });
  }
}
