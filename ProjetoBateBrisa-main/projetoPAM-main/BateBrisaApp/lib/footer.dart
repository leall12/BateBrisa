import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FacebookFunc {
  // Função para abrir o link do Facebook
  static void _openFacebook() async {
    final Uri url = Uri.parse('https://www.facebook.com/');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Não foi possível abrir $url';
    }
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Termos de Uso',
                  style: TextStyle(color: Colors.black, decoration: TextDecoration.underline, fontSize: 13, fontWeight: FontWeight.bold,),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const IconButton(
                icon: Icon(Icons.facebook, color: Colors.black),
                onPressed: FacebookFunc._openFacebook,
              ),
              IconButton(
                icon: const Icon(Icons.phone, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.email, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
          const Text('@Copyright - 2024',
          style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
        ],
      ),
    );
  }
}
