import 'package:flutter/material.dart';
class Consultas extends StatelessWidget {
  const Consultas({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const ListTile(
          title: Text('Extratos e Históricos'),
        ),
        ListTile(
          leading: const Icon(
            Icons.account_balance_wallet,
          ),
          title: const Text('Extrato da Cota'),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(
            Icons.restore,
          ),
          title: const Text('Demostrativo do Grupo'),
          onTap: () => {},
        ),
        
        const ListTile(
          title:  Text('Documentos'),
        ),
        ListTile(
          leading: const Icon(
            Icons.query_stats,
          ),
          title: const Text('Calendário de assembleias'),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(Icons.location_city),
          title:  const Text('IR - Informe Anual de Rendimentos'),
          onTap: () => {},
        ),
        const ListTile(
          title:  Text('Atendimento'),
        ),
        ListTile(
          leading: const Icon(Icons.assignment_turned_in),
          title: const Text('Canais de Atendimento'),
          onTap: () => {},
        ),
        
      ],
    );
  }
}
