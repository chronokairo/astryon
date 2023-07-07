import 'package:flutter/material.dart';
import '../sidemenu/notification.dart';
import 'consultas.dart';
import '../calendario/imovel.dart';
import '../calendario/auto.dart';
import '../calendario/pesado.dart';


import 'inicio.dart';

class CalendarioAssembleia extends StatefulWidget {
  const CalendarioAssembleia({super.key});

  @override
  State<CalendarioAssembleia> createState() {
    return _CalendarioAssembleiaState();
  }
}

class _CalendarioAssembleiaState extends State<CalendarioAssembleia> {
  int _indiceAtual = 1;
  final List<Widget> _telas = [
      Imovel(),
      Auto(),
      Pesado(),    
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
          BottomNavigationBarItem(icon: Icon(Icons.looks_one), label: ("Semana 1")),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two), label: ("Semana 2")),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3), label: ("Semana 3")),
          
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
