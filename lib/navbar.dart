import 'package:flutter/material.dart';

import 'package:priorizza/paginas/assembleias.dart';
import 'package:priorizza/paginas/blog.dart';
import 'package:priorizza/paginas/consorcios.dart';
import 'package:priorizza/paginas/contato.dart';
import 'package:priorizza/paginas/home.dart';
import 'package:priorizza/paginas/quem_somos.dart';
import 'package:priorizza/paginas/seja_parceiro.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});




  @override
  State<HomeScreen> createState() { return _HomeScreenState();}
}

class _HomeScreenState extends State<HomeScreen> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
  const Home(),
  const Consorcios(),
  const QuemSomos(),
  const Contato(),
  const Assembleias(),
  const SejaParceiro(),
  const Blog(),
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ("Home")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on),
              label:("Consórcios")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label:("Quem Somos")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ("Contato")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups),
              label:("Assembleias")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.handshake),
              label:("Seja nosso parceiro")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label:("Blog")
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
