import 'package:flutter/material.dart';

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
    _tabController = TabController(length: 3, vsync: this);
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
        backgroundColor: const Color(0xFFD8B45E),
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TabBar(
              
              
              controller: _tabController,
              tabs: const [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.directions_car),
                ),
                Tab(
                  icon: Icon(Icons.motorcycle),
                ),
              ],
            ),
          ],
        ),
      ),
      
      body: TabBarView(
        
        controller: _tabController,
        children: [
          _buildTabContent('Imóveis',
              'Com o consórcio de imóveis, você pode realizar o sonho da casa própria.'),
          _buildTabContent('Carros',
              'Com o consórcio de carros, você pode adquirir seu veículo sem pagar juros abusivos.'),
          _buildTabContent('Motos',
              'Com o consórcio de motos, você pode ter sua moto sem precisar pagar à vista.'),
        ],
      ),
    );
  }

  Widget _buildTabContent(String title, String description) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            description,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
