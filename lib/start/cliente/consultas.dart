import 'package:flutter/material.dart';
import '/start/inicio.dart';

import '../atendimento.dart';
import '../assembleias.dart';


class Consultas extends StatefulWidget {
  const Consultas({Key? key});

  @override
  State<Consultas> createState() => _ConsultasState();
}

class _ConsultasState extends State<Consultas> {
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
        page = const CalendarioAssembleia();
        break;
      case 2:
        page = const AtendimentoClienteScreen();
        break;
    
        
        

      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                  selectedLabelTextStyle: const TextStyle(
      color: Color(0xFFD8B45E), // Cor do texto selecionado
    ),
    unselectedLabelTextStyle: const TextStyle(
      color: Colors.white, // Cor do texto selecionado
    ),
                  
          selectedIconTheme: const IconThemeData(color: Color(0xFFD8B45E),  ),
          unselectedIconTheme: const IconThemeData(color: Colors.white  ),
                extended: constraints.maxWidth >= 600,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Página Inicial'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.event),
                    label: Text('Calendário de Assembleias'),
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
      );
    });
  }
}