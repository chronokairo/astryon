import 'package:flutter/material.dart';
import 'package:priorizza/sidemenu/consorcios.dart';
import 'package:priorizza/sidemenu/contemplacao.dart';
import 'package:priorizza/navbar/consultas.dart';
import 'package:priorizza/navbar/home.dart';

import 'atendimento.dart';
import 'documento.dart';
import 'folha_ponto.dart';
import 'simulacao_lance.dart';
import 'simulador.dart';

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
      case 5:
        page = DocumentsScreen();
        break;
      case 6:
        page = const PontoWidget();
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
                      icon: Icon(Icons.home),
                      label: Text('Início'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.calculate),
                      label: Text('Simulador'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.search),
                      label: Text('Consulta de contemplação'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.chat),
                      label: Text('Atendimento ao cliente'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.compare_arrows),
                      label: Text('Simulações de lances'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.description),
                      label: Text('Acesso a documentos'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.schedule),
                      label: Text('Ponto'),
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