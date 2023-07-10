import 'package:flutter/material.dart';

import 'atendimento.dart';
import '../assembleias/assembleias.dart';
import '../navbar/navbar.dart';


class SideBar extends StatefulWidget {
  const SideBar({super.key});


  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;

    switch (selectedIndex) {
      case 0:
        page = 
         const HomeScreen();
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