import 'package:flutter/material.dart';

class PontoWidget extends StatefulWidget {
  const PontoWidget({super.key});

  @override
  _PontoWidgetState createState() => _PontoWidgetState();
}

class _PontoWidgetState extends State<PontoWidget> {
  String entrada = '';
  String saida = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Folha de ponto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hora de entrada:',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              entrada,
              style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Hora de saída:',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              saida,
              style: const TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (entrada == '') {
              entrada = DateTime.now().toString();
            } else {
              saida = DateTime.now().toString();
            }
          });
        },
        child: const Icon(Icons.timer),
      ),
    );
  }
}
