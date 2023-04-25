import 'package:flutter/material.dart';
import 'package:montoya/pagina1.dart';
import 'package:montoya/pagina2.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera Pantalla'),
        backgroundColor: Color(0xff35b3b7),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pagina 4'),
          onPressed: () {
            // Navega a la segunda pantalla usando una ruta con nombre
            Navigator.pushNamed(context, '/cuarta');
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff5e2222),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 40,
                      ),
                      flex: 2,
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        "Luis Alejandro Sandoval Quintero",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text("Pagina 1"),
              leading: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pantalla1()));
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text("Pagina 2"),
              leading: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {},
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pantalla2()));
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: const Text("Pagina 3"),
              leading: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {},
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Pantalla3()));
              },
            )
          ],
        ),
      ),
    );
  }
}
