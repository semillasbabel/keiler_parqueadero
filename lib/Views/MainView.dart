// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //........................
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("PARQUEADERO KEII06"),
        centerTitle: true,
      ),
      //........................
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //--------------------
          RaisedButton(
            child: const Text("Entrada de Auto"),
            onPressed: () {
              _entradaAuto(context);
            },
          ),
          //--------------------
          const SizedBox(height: 60),
          //--------------------
          RaisedButton(
            child: const Text("Salida de Auto"),
            onPressed: () {
              _salidaAuto(context);
            },
          ),
          //--------------------
        ]),
      ),
      //........................
    );
  }
}

void _salidaAuto(BuildContext context) {}

void _entradaAuto(BuildContext context) {}
