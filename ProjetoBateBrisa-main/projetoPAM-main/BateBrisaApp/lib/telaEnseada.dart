import 'package:batebrisa/footer.dart';
import 'package:batebrisa/praia.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'localPraia.dart';
import 'farmacia.dart';
import 'mercado.dart';
import 'restaurante.dart';

void main() {
  runApp(const MaterialApp(
    home: EnseadaScreen(),
  ));
}

class EnseadaScreen extends StatefulWidget {
  const EnseadaScreen({super.key});

  @override
  _EnseadaScreenState createState() => _EnseadaScreenState();
}

class _EnseadaScreenState extends State<EnseadaScreen> {
  final List<Praia> praias = [
    Praia("Praia da Enseada", "Guarujá"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Praia da Enseada",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Visite essa linda praia!',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Local: Guarujá',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
              ),
              items: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/enseada1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/enseada2.webp'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/enseada3.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            ...praias.map((praia) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Text(
                        "Informações:",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ExpansionTile(
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      title: const Text(
                        "Endereço:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            "${locais[0].ref_praia}, Bairro ${locais[0].bairro_praia}, Estado de ${locais[0].estado_praia}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      title: const Text(
                        "Farmácia próxima:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            "${farmacias[0].nome_farm}. ${farmacias[0].nome_rua_farm}, ${farmacias[0].num_farm}. Funcionamento: ${farmacias[0].horario_farm}. Telefone: ${farmacias[0].telefone_farm}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      title: const Text(
                        "Mercado próximo:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            "${mercados[0].nome_merc}. ${mercados[0].nome_rua_merc}, ${mercados[0].num_merc}. Funcionamento: ${mercados[0].horario_merc}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      iconColor: Colors.white,
                      collapsedIconColor: Colors.white,
                      title: const Text(
                        "Restaurante próximo:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      children: [
                        ListTile(
                          title: Text(
                            "${restaurantes[0].nome_rest}. ${restaurantes[0].nome_rua_rest}, ${restaurantes[0].num_rest}. Funcionamento: ${restaurantes[0].horario_rest}. Telefone: ${restaurantes[0].telefone_rest}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
            const SizedBox(height: 16.0),
            const FooterWidget(),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 23, 63, 95),
    );
  }
}
