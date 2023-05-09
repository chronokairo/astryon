import 'package:flutter/material.dart';

class SimuladorConsorcioWidget extends StatefulWidget {
  const SimuladorConsorcioWidget({super.key});

  @override
  State<SimuladorConsorcioWidget> createState() {
      return _SimuladorConsorcioWidgetState();
      }
}

class _SimuladorConsorcioWidgetState extends State<SimuladorConsorcioWidget> {
  final _formKey = GlobalKey<FormState>();

  double _valorTotal = 0.0;
  double _taxaAdministracao = 0.0;
  int _numMeses = 0;
  double _valorParcela = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simulador de Consórcio'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Valor total do consórcio',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe o valor total do consórcio';
                  }
                  return null;
                },
                onSaved: (value) {
                  _valorTotal = double.parse(value!);
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Taxa de administração',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe a taxa de administração';
                  }
                  return null;
                },
                onSaved: (value) {
                  _taxaAdministracao = double.parse(value!);
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Número de meses',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Informe o número de meses';
                  }
                  return null;
                },
                onSaved: (value) {
                  _numMeses = int.parse(value!);
                },
              ),
              const SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    setState(() {
                      _valorParcela = (_valorTotal + (_valorTotal * _taxaAdministracao / 100)) / _numMeses;
                    });
                  }
                },
                child: const Text('Calcular'),
              ),
              const SizedBox(height: 20.0),
              Text(
                _valorParcela == 0.0 ? '' : 'Valor da parcela: R\$ ${_valorParcela.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
