import 'package:flutter/material.dart';

class ContaConsorcioScreen extends StatefulWidget {
  final String nome;
  final String email;
  final double saldo;
  final List<Parcela> parcelas;

  const ContaConsorcioScreen({Key? key, required this.nome, required this.email, required this.saldo, required this.parcelas}) : super(key: key);

  @override
  State<ContaConsorcioScreen> createState() => _ContaConsorcioScreenState();
}

class _ContaConsorcioScreenState extends State<ContaConsorcioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conta de Consórcio'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nome: ${widget.nome}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                Text(
                  'E-mail: ${widget.email}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                Text(
                  'Saldo: R\$ ${widget.saldo}',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              padding: const EdgeInsets.all(16),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Histórico de Pagamentos:',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 16),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: widget.parcelas.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Parcela ${widget.parcelas[index].numero}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          Text(
                            'R\$ ${widget.parcelas[index].valor}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Parcela {
  int numero;
  DateTime dataVencimento;
  double valor;

  Parcela({required this.numero, required this.dataVencimento, required this.valor});
}
