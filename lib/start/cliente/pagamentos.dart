import 'package:flutter/material.dart';

class PagamentosPage extends StatelessWidget {
  const PagamentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('João Silva'),
            subtitle: Text('Cota: 1234'),
            trailing: Text(
              'R\$ 500,00',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Maria Souza'),
            subtitle: Text('Cota: 5678'),
            trailing: Text(
              'R\$ 800,00',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Pedro Santos'),
            subtitle: Text('Cota: 9012'),
            trailing: Text(
              'R\$ 300,00',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Ana Oliveira'),
            subtitle: Text('Cota: 3456'),
            trailing: Text(
              'R\$ 600,00',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Carlos Mendes'),
            subtitle: Text('Cota: 7890'),
            trailing: Text(
              'R\$ 400,00',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
