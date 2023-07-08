import 'package:flutter/material.dart';
import 'package:priorizza/start/assembleias.dart';
import 'package:url_launcher/url_launcher.dart';

import '../consorcios.dart';
import '../inicio.dart';
import 'extrato.dart';
import 'meuconsorcio.dart';
import 'ofertarlance.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    const ConsorcioPage(),
    const ExtratoPage(),
    const OfertarLancePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remover o botão de voltar
        iconTheme: const IconThemeData(
          color: Color(0xFFD8B45E), // Define a cor desejada para o ícone
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Inicio()),
              );
            },
            child: const Text(
              'Início',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Consorcios()),
              );
            },
            child: const Text(
              'Consórcios',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              launchUrl('https://blog.priorizza.app' as Uri);
            },
            child: const Text(
              'Blog',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CalendarioAssembleia()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFD8B45E),
              onPrimary: Colors.white,
            ),
            child: const Text('Assembleias'),
          ),
        ],
      ),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFFD8B45E),
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: "Pagamentos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: "Extrato",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gavel),
            label: "Ofertar um lance",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
