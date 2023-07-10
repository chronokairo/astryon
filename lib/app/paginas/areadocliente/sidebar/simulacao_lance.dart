import 'package:flutter/material.dart';

class SimulacaoLancesScreen extends StatefulWidget {
  const SimulacaoLancesScreen({super.key});

  @override
  State<SimulacaoLancesScreen> createState() => _SimulacaoLancesScreenState();
}

class _SimulacaoLancesScreenState extends State<SimulacaoLancesScreen> {
  final _formKey = GlobalKey<FormState>();
  double _lance = 0.0;
  double _chances = 0.0;

  void _simularLance() {
    if (_formKey.currentState!.validate()) {
      // Simular o lance e atualizar o valor das chances
      setState(() {
        // Simulação fictícia para demonstração
        _chances = _lance * 0.75;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simulações de Lances'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Simulação de Lances',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Valor do lance',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira um valor para simulação.';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _lance = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _simularLance,
                child: const Text('Simular'),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Chances de Contemplação: $_chances%',
                style: const TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
