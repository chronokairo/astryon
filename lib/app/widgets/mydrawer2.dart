import 'package:flutter/material.dart';
import 'package:priorizza/app/paginas/areadocliente/sidebar/extrato.dart';
import 'package:priorizza/app/paginas/areadocliente/sidebar/meuconsorcio.dart';
import 'package:priorizza/app/paginas/areadocliente/sidebar/ofertarlance.dart';
import 'package:priorizza/app/paginas/areadocliente/sidebar/simulacao_lance.dart';
import 'package:priorizza/app/paginas/areadocliente/sidebar/simulador.dart';
import 'package:priorizza/app/widgets/myappbar.dart';
import 'package:priorizza/app/widgets/sidebar.dart';


class MyDrawer2 extends StatefulWidget {
  final String column2;
  final String column3;
  final String column6;

  const MyDrawer2({
    Key? key,
    required this.column2,
    required this.column3,
    required this.column6,
  }) : super(key: key);

  @override
  MyDrawer2State createState() => MyDrawer2State();
}

class MyDrawer2State extends State<MyDrawer2> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;

    switch (selectedIndex) {
      case 0:
        page = SideBar(
          column2: widget.column2,
          column3: widget.column3,
          column6: widget.column6,
        );
        break;
      case 1:
        page = const BoletoPage();
        break;
      case 2:
        page = const OfertarLancePage();
        break;
      case 3:
        page = const SimulacaoLancesScreen();
        break;
      case 4:
        page = const ExtratoPage();
        break;
      case 5:
        page = const ConsorcioPage();
        break;

      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: const MyAppBar(),
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                selectedLabelTextStyle: const TextStyle(
                  color: Colors.black,
                ),
                backgroundColor: const Color(0xFFFFFFFF),
                selectedIconTheme: const IconThemeData(
                  color: Colors.black,
                ),
                extended: constraints.maxWidth >= 600,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(
                        Icons.person), // Updated icon for "Minhas informações"
                    label: Text('Minhas informações'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                        Icons.receipt_long), // Updated icon for "Emitir Boleto"
                    label: Text('Emitir Boleto'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                        Icons.trending_up), // Updated icon for "Ofertar Lance"
                    label: Text('Ofertar Lance'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons
                        .event), // Updated icon for "Resultado de Assembleia"
                    label: Text('Resultado de Assembleia'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                        Icons.payment), // Updated icon for "Meus Pagamentos"
                    label: Text('Meus Pagamentos'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.layers), // Updated icon for "Meu Plano"
                    label: Text('Meu Plano'),
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
