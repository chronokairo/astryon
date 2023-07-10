import 'package:flutter/material.dart';
import 'package:priorizza/app/paginas/home/inicio.dart';
import 'contemplacao.dart';
import 'atendimento.dart';
import 'simulacao_lance.dart';
import 'simulador.dart';
import 'extrato.dart';
import 'meuconsorcio.dart';
import 'ofertarlance.dart';

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
        page = const Inicio();
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
        page = const ConsorcioPage();
        break;
        case 6:
        page = const ExtratoPage();
        break;
      
        case 7:
        page = const OfertarLancePage();
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
                backgroundColor: const Color(0xFF121212),
                selectedIconTheme: const IconThemeData(
                  color: Color(0xFFD8B45E),
                ),
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
                    icon: Icon(Icons.payment),
                    label: Text('Pagamentos'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.description),
                    label: Text('Extrato'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.gavel),
                    label: Text('Ofertar um lance'),
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

  void onTabTapped(int index) {
    setState(() {
    });
  }
}
