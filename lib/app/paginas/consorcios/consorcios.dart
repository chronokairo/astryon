import 'package:flutter/material.dart';
import 'carros.dart';
import 'package:url_launcher/url_launcher.dart';
import '../areadocliente/loginscreen/login_screen.dart';
import '../home/inicio.dart';

class Consorcios extends StatefulWidget {
  const Consorcios({super.key});

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
              style: TextStyle(),
            ),
          ),
          TextButton(
            onPressed: () {
              launchUrl('https://blog.priorizza.app' as Uri);
            },
            child: const Text(
              'Blog',
              style: TextStyle(),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            child: const Text('Área do Cliente'),
          ),
        ],
      ),
      body: Column(
        children: [
          TabBar(
            // Define a cor do texto da aba ativa

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
