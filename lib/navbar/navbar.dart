import 'package:flutter/material.dart';
import 'package:priorizza/navbar/blog.dart';
import 'package:priorizza/navbar/consorcios.dart';
import 'package:priorizza/navbar/contato.dart';
import 'package:priorizza/sidemenu/sidemenu2.dart';

import '../sidemenu/atendimento.dart';
import '../sidemenu/notification.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _indiceAtual = 2;
  final List<Widget> _telas = [
    const Consorcios(),
    const AtendimentoClienteScreen (),
    const Blog(),
    const NotificationsScreen(),
     const Contato(),
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
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on), label: ("Consórcios")),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat), label: ("SAC")),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ("Notificações")) ,
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ("Menu")),
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
