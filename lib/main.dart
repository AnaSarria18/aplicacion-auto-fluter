import 'package:flutter/material.dart';
import 'package:flutter_aplicacion_autos/views/menuOption.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alquiler de Autos',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: MenuOption(),
    );
  }
}
