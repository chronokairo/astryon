import 'package:flutter/material.dart';
import 'package:priorizza/start/consorcios/carros.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cliente/login_screen.dart';
import 'consorcios/motos.dart';
import 'inicio.dart';

class Consorcios extends StatefulWidget {
  const Consorcios({Key? key});

  @override
  State<Consorcios> createState() {
    return _ConsorciosPageState();
  }
}

class _ConsorciosPageState extends State<Consorcios>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFFD8B45E),
            ),
            child: const Text('Área do Cliente'),
          ),
        ],
      ),
      body: Column(
        children: [
          TabBar(
            indicatorColor:
                Color(0xFFD8B45E), // Define a cor desejada para o ícone
            // Define a cor do indicador ativo
            unselectedLabelColor:
                Colors.grey, // Define a cor do texto das abas inativas
            labelColor: Color(0xFFD8B45E), // Define a cor do texto da aba ativa

            controller: _tabController,
            tabs: const [
              Tab(text: 'Imóveis'),
              Tab(text: 'Autos'),
              Tab(text: 'Bikes'),
              Tab(text: 'Pesados'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Text('Imóveis'),
                Autos(),
                Text('Bikes'),
                Text('Pesados'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
