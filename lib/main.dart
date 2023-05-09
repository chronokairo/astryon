import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:priorizza/home/folha_ponto.dart';
import 'package:priorizza/home/login.dart';
import 'package:priorizza/home/simulador.dart';
import 'package:priorizza/paginas/assembleias.dart';
import 'package:priorizza/paginas/blog.dart';
import 'package:priorizza/paginas/contato.dart';
import 'package:priorizza/paginas/quem_somos.dart';
import 'package:priorizza/paginas/seja_parceiro.dart';
import 'package:provider/provider.dart';

import 'paginas/consorcios.dart';

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
        page = const GeneratorPage();
        break;
      case 1:
        page = const Consorcios();
        break;
      case 2:
        page = const QuemSomos();
        break;
      case 3:
        page = const Contato();
        break;
      case 4:
        page = const Assembleias();
        break;
      case 5:
        page = const SejaParceiro();
        break;
      case 6:
        page = const Blog();
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
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.monetization_on),
                    label: Text('Consórcios'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.info),
                    label: Text('Quem Somos?'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.person),
                    label: Text('Contato'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.groups),
                    label: Text('Assembleias'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.handshake),
                    label: Text('Seja nosso parceiro'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.newspaper),
                    label: Text('Blog'),
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
