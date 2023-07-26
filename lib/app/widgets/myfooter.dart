import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      // Adicionando bordas arredondadas ao Container
      decoration: BoxDecoration(
        color: const Color(0x99000000),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: 400,
            child: Image.asset(
              'assets/logo.png', // Substitua pelo caminho da imagem do logo
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Antonio Victor Pimentel Pires LTDA',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const Text(
            'CNPJ: 41.414.474/0001-67',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          const Text(
            'Autorizado pelo Banco Central Nº 3/00/223/88',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: _launchFacebookURL,
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
                label: const Text(
                  'Siga-nos no Facebook',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue, // Cor do texto do botão
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Função para abrir a URL do Facebook
  _launchFacebookURL() async {
    const url = 'https://www.facebook.com/consorciopriorizza'; // Substitua pela URL da sua página do Facebook
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Não foi possível abrir a URL: $url';
    }
  }
}
