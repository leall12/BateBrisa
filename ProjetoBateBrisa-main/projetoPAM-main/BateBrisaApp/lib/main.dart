import 'dart:js_interop';

import 'package:batebrisa/footer.dart';
import 'package:flutter/material.dart';
import 'telaEnseada.dart';
import 'praia.dart';

void main() {
  runApp(const MaterialApp(
    title: "App",
    home: MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

final List<Praia> praias = [
  Praia('Praia da Enseada', 'Guarujá'),
  Praia('Praia do Éden', 'Guarujá'),
  Praia('Praia Pernambuco', 'Guarujá'),
];

class _MainAppState extends State<MainApp> {
  bool _showExpansionTile = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BateBrisa',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'BateBrisa!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 86, 201, 255),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Buscar',
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              setState(() {
                                _showExpansionTile = !_showExpansionTile;
                              });
                            },
                          ),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (_showExpansionTile)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ExpansionTile(
                    iconColor: Colors.white,
                    collapsedIconColor: Colors.white,
                    title: const Text('Praias próximas de você:',
                        style: TextStyle(color: Colors.white,
                        fontSize: 20)),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                            '${praias[0].nome} – ${praias[0].localPraia}',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EnseadaScreen()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(
                            '${praias[1].nome} – ${praias[1].localPraia}',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EnseadaScreen()),
                          );
                        },
                      ),
                      ListTile(
                        title: Text(
                            '${praias[2].nome} – ${praias[2].localPraia}',
                            style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EnseadaScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 3.5,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'img/mapa.png',
                        width: 400,
                        height: 570,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40, height: 80),
              const FooterWidget(),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 23, 63, 95),
      ),
    );
  }
}
