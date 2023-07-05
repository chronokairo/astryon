import 'package:flutter/material.dart';
import 'package:priorizza/navbar/services.dart';
import '../sidemenu/notification.dart';
import 'consultas.dart';

import 'home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _indiceAtual = 1;
  final List<Widget> _telas = [
    const MyHomePage(),
     const Inicio(),
    const Servicos(),
     
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFFD8B45E),
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.how_to_reg), label: ("Consultas")),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Início")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ("Serviços")) ,
          
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
