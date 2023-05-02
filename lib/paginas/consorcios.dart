// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:priorizza/paginas/login.dart';

class Consorcios extends StatefulWidget {
  const Consorcios({Key? key}) : super(key: key);

  @override
  State<Consorcios> createState() {
    return _ConsorciosState();
  }
}

class _ConsorciosState extends State<Consorcios>
    with SingleTickerProviderStateMixin {
  final int _selectedIndex = 0;
  late AnimationController animationController;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    _pages = <Widget>[
      CallsPage(
        isHideBottomNavBar: (isHideBottomNavBar) {
          isHideBottomNavBar
              ? animationController.forward()
              : animationController.reverse();
        },
      ),
    ];
  }

  @override
  void dispose() {
    // ...
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }
}

class CallsPage extends StatelessWidget {
  const CallsPage({super.key, required this.isHideBottomNavBar});
  final Function(bool) isHideBottomNavBar;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Consórcios de Imóveis',
                  ),
                  Tab(
                    text: 'Consórcios de Automóveis',
                  ),
                  Tab(
                    text: 'Consórcios de Pesados',
                  ),
                ],
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ConsorcioImoveis(),
            ConsorcioAutomoveis(),
            ConsorcioPesados(),
          ],
        ),
      ),
    );
  }
}

class ConsorcioImoveis extends StatefulWidget {
  const ConsorcioImoveis({Key? key}) : super(key: key);

  @override
  State<ConsorcioImoveis> createState() {
    return _ConsorcioImoveisState();
  }
}

class _ConsorcioImoveisState extends State<ConsorcioImoveis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          HtmlWidget(
          '<iframe src="https://consorcioroma.com.br/consorcio-de-imovel/"></iframe>',
          factoryBuilder: () => MyWidgetFactory(),
        ),
        ],
      ),
    );
  }
}

class ConsorcioAutomoveis extends StatefulWidget {
  const ConsorcioAutomoveis({Key? key}) : super(key: key);

  @override
  State<ConsorcioAutomoveis> createState() {
    return _ConsorcioAutomoveisState();
  }
}

class _ConsorcioAutomoveisState extends State<ConsorcioAutomoveis> {
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          HtmlWidget(
          '<iframe src="https://consorcioroma.com.br/consorcio-de-automovel/"></iframe>',
          factoryBuilder: () => MyWidgetFactory(),
        ),
        ],
      ),
    );
  }
}

class ConsorcioPesados extends StatefulWidget {
  const ConsorcioPesados({Key? key}) : super(key: key);

  @override
  State<ConsorcioPesados> createState() {
    return _ConsorcioPesadosState();
  }
}

class _ConsorcioPesadosState extends State<ConsorcioPesados> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 1,
        children: [
          HtmlWidget(
          '<iframe src="https://consorcioroma.com.br/consorcio-de-pesado/"></iframe>',
          factoryBuilder: () => MyWidgetFactory(),
        ),
        ],
      ),
    );
  }
}

class ConsorcioPage extends StatelessWidget {
  const ConsorcioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consórcio de imóveis'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'O que é um consórcio de imóveis?',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Text(
                'Um consórcio de imóveis é uma modalidade de financiamento coletivo em que um grupo de pessoas se reúne para formar uma poupança comum e comprar um imóvel. Esse grupo é administrado por uma empresa especializada, que realiza sorteios ou leilões para determinar quem receberá a carta de crédito para a compra do imóvel.',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Como funciona o consórcio de imóveis?',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Text(
                'Para participar de um consórcio de imóveis, é necessário pagar uma parcela mensal que será destinada à formação do fundo comum. A cada mês, um ou mais consorciados são sorteados para receber a carta de crédito, que pode ser usada para comprar um imóvel residencial ou comercial. É importante lembrar que o valor da carta de crédito pode variar de acordo com o valor do imóvel e o plano escolhido pelo consorciado.',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'Quais são as vantagens do consórcio de imóveis?',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Text(
                'O consórcio de imóveis pode ser uma boa opção para quem não tem pressa em adquirir um imóvel e quer economizar em juros e taxas. Além disso, como não é necessário dar entrada no imóvel, o consórcio pode ser uma alternativa mais acessível para quem não tem um grande valor para investir no momento. Outra vantagem é que o consorciado pode escolher o imóvel que deseja comprar, desde que esteja dentro do valor da carta de crédito.',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
