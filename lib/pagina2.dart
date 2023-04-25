import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pantalla'),
        backgroundColor: Color(0xff35b3b7),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pagina 3'),
          onPressed: () {
            // Navega a la segunda pantalla usando una ruta con nombre
            Navigator.pushNamed(context, '/tercera');
          },
        ),
      ),
    );
  }
}
