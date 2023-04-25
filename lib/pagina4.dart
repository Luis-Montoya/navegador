import 'package:flutter/material.dart';

class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Pagina primera pantalla'),
          backgroundColor: Color(0xff35b3b7),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.vertical_align_bottom),
              ),
              Tab(
                icon: Icon(Icons.vertical_align_center),
              ),
              Tab(
                icon: Icon(Icons.vertical_align_top_rounded),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: ElevatedButton(
                child: const Text('Pagina 1'),
                onPressed: () {
                  // Navega a la segunda pantalla usando una ruta con nombre
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Pagina 2'),
                onPressed: () {
                  // Navega a la segunda pantalla usando una ruta con nombre
                  Navigator.pushNamed(context, '/segunda');
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('Pagina 3'),
                onPressed: () {
                  // Navega a la segunda pantalla usando una ruta con nombre
                  Navigator.pushNamed(context, '/tercera');
                },
              ),
            ),
          ],
        ),
      ),
    );
    onPressed:
    () {
      Navigator.pushNamed(context, '/segunda');
    };
  }
}
