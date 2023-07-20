import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactBar extends StatelessWidget implements PreferredSizeWidget {
  const ContactBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(59, 84, 51, 51),
      elevation: 0,
      leading: Row(
        children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () {
                  _launchPhoneNumber(
                      '092985080304'); // Substitua '123456789' pelo número de telefone desejado
                },
              ),
              // Espaçamento entre o ícone e o texto
            ],
          ),
        ],
      ),
      title: Row(children: const [
        Text(
          '(092) 98508-0304', // Substitua '123456789' pelo número de telefone desejado
          style: TextStyle(
              fontSize: 16, color: Colors.white), // Estilo do texto do número
        ),
      ]),
      actions: [
        TextButton(
          onPressed: () {
            // Coloque aqui a lógica para a ação do botão "Clientes"
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(
                color: Colors.blue, // Cor da linha na moldura
                width: 2, // Largura da linha na moldura
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          ),
          child: const Text(
            "Clientes",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 8), // Espaçamento entre os botões
        TextButton(
          onPressed: () {
            // Coloque aqui a lógica para a ação do botão "Revenda"
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(
                color: Colors.green, // Cor da linha na moldura
                width: 2, // Largura da linha na moldura
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          ),
          child: const Text(
            "Revenda",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 8), // Espaçamento entre os botões
        TextButton(
          onPressed: () {
            // Coloque aqui a lógica para a ação do botão "Faça uma Simulação"
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(
                color: Colors.orange, // Cor da linha na moldura
                width: 2, // Largura da linha na moldura
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          ),
          child: const Text(
            "Faça uma Simulação",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  // Função para chamar o número de telefone
  void _launchPhoneNumber(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      // Trate o caso em que a chamada não pode ser feita, se necessário.
      // ignore: avoid_print
      print('Não foi possível realizar a chamada para $phoneNumber');
    }
  }
}
