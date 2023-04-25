import 'package:flutter/material.dart';
import 'package:montoya/pagina1.dart';
import 'package:montoya/pagina2.dart';
import 'package:montoya/pagina3.dart';
import 'package:montoya/pagina4.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named Routes Demo',
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => const Pantalla1(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/segunda': (context) => const Pantalla2(),
      '/tercera': (context) => const Pantalla3(),
      '/cuarta': (context) => const Pantalla4(),
    },
  ));
}
