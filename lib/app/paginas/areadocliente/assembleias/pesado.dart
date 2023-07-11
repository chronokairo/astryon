import 'package:flutter/material.dart';

class Pesado extends StatelessWidget {
  static List<String> get datasResultados => <String>[
        '01/01/2023',
        '05/02/2023',
        '12/03/2023',
        '15/04/2023',
        '20/05/2023',
        '25/06/2023',
        '01/07/2023',
        '10/08/2023',
        '18/09/2023',
        '22/10/2023',
        '27/11/2023',
        '31/12/2023',
      ];
  final List<String> datasVencimentoBoletos = [
    '05/01/2023',
    '10/02/2023',
    '17/03/2023',
    '20/04/2023',
    '25/05/2023',
    '30/06/2023',
    '05/07/2023',
    '12/08/2023',
    '20/09/2023',
    '25/10/2023',
    '30/11/2023',
    '05/01/2024',
  ];
  final List<String> datasSorteio = [
    '08/01/2023',
    '12/02/2023',
    '19/03/2023',
    '22/04/2023',
    '27/05/2023',
    '02/07/2023',
    '08/07/2023',
    '15/08/2023',
    '23/09/2023',
    '28/10/2023',
    '02/12/2023',
    '08/01/2024',
  ];

  Pesado({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const TabBar(
          tabs: [
            Tab(text: 'Resultados'),
            Tab(text: 'Vencimento Boletos'),
            Tab(text: 'Sorteio'),
          ],
          indicatorColor:
              Color(0xFFD8B45E), // Define a cor desejada para o ícone
          // Define a cor do indicador ativo
          unselectedLabelColor:
              Colors.grey, // Define a cor do texto das abas inativas
          labelColor: Color(0xFFD8B45E), // Define a cor do texto da aba ativa
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Define a quantidade de colunas da grade
              ),
              itemCount: datasResultados.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Resultado ${index + 1}'),
                  subtitle: Text(datasResultados[index]),
                );
              },
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Define a quantidade de colunas da grade
              ),
              itemCount: datasVencimentoBoletos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Vencimento Boleto ${index + 1}'),
                  subtitle: Text(datasVencimentoBoletos[index]),
                );
              },
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Define a quantidade de colunas da grade
              ),
              itemCount: datasSorteio.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Sorteio ${index + 1}'),
                  subtitle: Text(datasSorteio[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
