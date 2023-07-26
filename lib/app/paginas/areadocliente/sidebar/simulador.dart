import 'package:flutter/material.dart';

class BoletoPage extends StatefulWidget {

  const BoletoPage({super.key});

  @override
  State<BoletoPage> createState() => _BoletoPageState();
}

class _BoletoPageState extends State<BoletoPage> {
  String numeroBoleto = '1234567890';

  double valorBoleto = 100.00;

  String dataVencimento = '31/07/2023';

  void _emitirBoleto() {
    // Lógica para emitir o boleto aqui.
    // Pode ser uma chamada a uma API, por exemplo.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emitir Boleto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número do Boleto: $numeroBoleto',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Text(
              'Valor: R\$ $valorBoleto',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Text(
              'Data de Vencimento: $dataVencimento',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: _emitirBoleto,
              child: const Text('Emitir Boleto'),
            ),
          ],
        ),
      ),
    );
  }
}
