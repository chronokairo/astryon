import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Drawer header
          const UserAccountsDrawerHeader(
            accountName: Text('Consórcio Priorizza', style: TextStyle()),
            accountEmail: Text('contato@priorizza.app', style: TextStyle()),
            currentAccountPicture: CircleAvatar(
              child: Icon(
                Icons.person,
              ),
            ),
          ),
          // Drawer items
          ListTile(
            leading: const Icon(Icons.file_copy),
            title: const Text('Emita seu boleto'),
            onTap: () {
              // Navigate to the boleto page.
            },
          ),
          ListTile(
            leading: const Icon(Icons.attach_money),
            title: const Text('Oferte seu lance'),
            onTap: () {
              // Navigate to the lance page.
            },
          ),
          ListTile(
            leading: const Icon(Icons.speaker_notes),
            title: const Text('Verifique a assembleia'),
            onTap: () {
              // Navigate to the assembleia page.
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Atualize seus dados pessoais'),
            onTap: () {
              // Navigate to the dados_pessoais page.
            },
          ),
          ListTile(
            leading: const Icon(Icons.payments),
            title: const Text('Verifique seus pagamentos'),
            onTap: () {
              // Navigate to the pagamentos page.
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Verifique seu plano'),
            onTap: () {
              // Navigate to the plano page.
            },
          ),
        ],
      ),
    );
  }
}
