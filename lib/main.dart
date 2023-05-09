import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:priorizza/home/documento.dart';
import 'package:priorizza/home/folha_ponto.dart';
import 'package:priorizza/home/login.dart';
import 'package:priorizza/home/simulador.dart';
import 'package:priorizza/home/userinfo.dart';
import 'package:provider/provider.dart';

import 'home/atendimento.dart';
import 'home/contemplacao.dart';
import 'home/notification.dart';
import 'home/pagamentos.dart';
import 'home/simulacao_lance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Priorizza',
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }
    notifyListeners();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

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
        page = const ContaConsorcioScreen(
          email: 'contato@priorizza.app',
          nome: 'Luan',
          parcelas: [],
          saldo: 25.000,
        );
        break;
      case 1:
        page = const PagamentosScreen();
        break;
      case 2:
        page = const NotificationsScreen();
        break;
      case 3:
        page = const ContemplationScreen();
        break;
      case 4:
        page = const AtendimentoClienteScreen();
        break;
      case 5:
        page = const SimulacaoLancesScreen();
        break;
      case 6:
        page = DocumentsScreen();
        break;
      case 7:
        page = const PontoWidget();
        break;
      case 8:
        page = const SimuladorConsorcioWidget();
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
                extended: constraints.maxWidth >= 600,
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.account_circle),
                    label: Text('Gerenciamento de Conta'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.payment),
                    label: Text('Pagamentos'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.notifications),
                    label: Text('Notificações'),
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
                  NavigationRailDestination(
                    icon: Icon(Icons.calculate),
                    label: Text('Simulador'),
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

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({super.key});

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
    super.key,
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
