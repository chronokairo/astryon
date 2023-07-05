import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:priorizza/sidemenu/contemplacao.dart';
import 'package:priorizza/slider/notification.dart';
import 'package:provider/provider.dart';

import 'atendimento.dart';
import 'documento.dart';
import 'folha_ponto.dart';
import 'login.dart';
import 'simulacao_lance.dart';
import 'simulador.dart';
import '../main.dart';

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
        page = const NotificationsScreen();
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
          color: Colors.amber, // Defina a cor âmbar desejada aqui
          child: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.notifications),
                      label: Text('Notificações'),
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

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({Key? key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 10),
              ElevatedButton.icon(
                onPressed: () {
                  appState.toggleFavorite();
                },
                icon: const Icon(
                  Icons.shopping_cart,
                ),
                label: const Text('Simular e Comprar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    Key? key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TelaDeLogin()),
          );
        },
        child: const Text('Sou cliente'),
      ),
    );
  }
}
