import 'package:flutter/material.dart';
import 'package:priorizza/sidemenu/consorcios.dart';
import 'package:priorizza/sidemenu/contemplacao.dart';
import 'package:priorizza/navbar/consultas.dart';
import 'package:priorizza/navbar/home.dart';

import 'package:priorizza/sidemenu/atendimento.dart';
import 'package:priorizza/sidemenu/documento.dart';
import 'package:priorizza/sidemenu/folha_ponto.dart';
import 'package:priorizza/sidemenu/simulacao_lance.dart';
import 'package:priorizza/sidemenu/simulador.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;

    switch (selectedIndex) {
      case 0:
        page = 
         const Inicio();
        break;
      case 1:
        page = const SimuladorConsorcioWidget();
        break;
      case 2:
        page = const ContemplationScreen();
        break;
      case 3:
        page = const AtendimentoClienteScreen();
        break;
      case 4:
        page = const SimulacaoLancesScreen();
        break;
    
        
        

      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Container(
          child: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                    selectedLabelTextStyle: TextStyle(
      color: Color(0xFFD8B45E), // Cor do texto selecionado
    ),
                    
                    backgroundColor: Colors.white,
            selectedIconTheme: IconThemeData(color: Color(0xFFD8B45E),  ),
                  extended: constraints.maxWidth >= 600,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.description),
                      label: Text('Extrato da Cota'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.bar_chart),
                      label: Text('Demonstrativo do Grupo'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.event),
                      label: Text('Calendário de Assembleias'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.file_copy),
                      label: Text('Informe Anual de Rendimentos'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.chat),
                      label: Text('Canais de Atendimento'),
                    ),
                    
                   
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  child: page,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}