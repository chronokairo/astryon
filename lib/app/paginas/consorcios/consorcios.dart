import 'package:flutter/material.dart';
import 'package:priorizza/app/paginas/catalogo/pesados.dart';
import 'package:priorizza/app/widgets/myappbar.dart';

import '../catalogo/autos.dart';
import '../catalogo/house.dart';

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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/6.png"), // Substitua pelo caminho da sua imagem de background
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const MyAppBar(),
            TabBar(
              // Define a cor do texto da aba ativa
              controller: _tabController,
              tabs: const [
                Tab(text: 'Autos'),
                Tab(text: 'Imóveis'),
                Tab(text: 'Pesados'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  AutosScreen(),
                  CasaScreen(),
                  CatalogScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
