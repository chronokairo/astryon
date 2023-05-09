import 'package:flutter/material.dart';

class PagamentosScreen extends StatelessWidget {
  const PagamentosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagamentos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Digite o valor da parcela:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            const SizedBox(
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'R\$ 1.000,00',
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              child: const Text('Pagar'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
