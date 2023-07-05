import 'package:flutter/material.dart';
class Servicos extends StatelessWidget {
  const Servicos({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const ListTile(
          title: Text('Parcelas'),
        ),
        ListTile(
          leading: const Icon(
            Icons.account_balance_wallet,
          ),
          title: const Text('Boletos'),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(
            Icons.restore,
          ),
          title: const Text('Antecipar parcelas'),
          onTap: () => {},
        ),
        
        const ListTile(
          title:  Text('Assembleias'),
        ),
        ListTile(
          leading: const Icon(
            Icons.query_stats,
          ),
          title: const Text('Ofertas de lance'),
          onTap: () => {},
        ),
        const ListTile(
          
          title:  Text('Dados Cadastrais'),
        
        ),
        ListTile(
          leading: const Icon(Icons.location_city),
          title: const Text('Dados cadastrais'),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(Icons.assignment_turned_in),
          title: const Text('Alterar senha'),
          onTap: () => {},
        ),
        
      ],
    );
  }
}
