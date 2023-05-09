import 'package:flutter/material.dart';

class ContemplationScreen extends StatefulWidget {
  const ContemplationScreen({super.key});

  @override
  State<ContemplationScreen> createState() => _ContemplationScreenState();
}

class _ContemplationScreenState extends State<ContemplationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _cotaController = TextEditingController();

  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consulta de Contemplação'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: _cotaController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Número da cota',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o número da cota';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _consultarContemplacao();
                    }
                  },
                  child: const Text('Consultar'),
                ),
                const SizedBox(height: 16.0),
                Text(
                  _result,
                  style: const TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _consultarContemplacao() {
    // Aqui você pode adicionar sua lógica para consultar as informações de contemplação
    // com base no número da cota inserido pelo usuário
    // Nesse exemplo, estamos apenas exibindo uma mensagem de exemplo com os resultados da consulta

    setState(() {
      _result = 'Você não foi contemplado no último sorteio.';
    });
  }
}
