import 'package:flutter/material.dart';

class HistoricoLancesScreen extends StatelessWidget {
  final List<double> lances;

  const HistoricoLancesScreen({Key? key, required this.lances}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de Lances'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: ListView.builder(
          itemCount: lances.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                'Lance ${index + 1}',
                style: const TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                'R\$ ${lances[index].toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 16),
              ),
            );
          },
        ),
      ),
    );
  }
}
