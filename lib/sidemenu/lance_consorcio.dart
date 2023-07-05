import 'package:flutter/material.dart';

class LanceConsorcioScreen extends StatefulWidget {
  final double saldo;

  const LanceConsorcioScreen({Key? key, required this.saldo}) : super(key: key);

  @override
  State<LanceConsorcioScreen> createState() => _LanceConsorcioScreenState();
}

class _LanceConsorcioScreenState extends State<LanceConsorcioScreen> {
  double _lance = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Realizar Lance'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Saldo Disponível: R\$ ${widget.saldo}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Digite o valor do lance',
                ),
                onChanged: (value) {
                  setState(() {
                    _lance = double.parse(value);
                  });
                },
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: _lance > widget.saldo ? null : () {
                  // aqui ficaria a lógica para enviar o lance
                  // por exemplo, utilizando uma requisição HTTP
                  Navigator.pop(context);
                },
                child: const Text('Enviar Lance'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
