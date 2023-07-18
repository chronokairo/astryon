import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0x99000000), // Adicionando transparência ao Drawer
        child: ListView(
          children: [
            // Drawer items
            ListTile(
              leading: const Icon(Icons.file_copy, color: Colors.white),
              title: const Text(
                'Emita seu boleto',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the boleto page.
              },
            ),
            ListTile(
              leading: const Icon(Icons.attach_money, color: Colors.white),
              title: const Text(
                'Oferte seu lance',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the lance page.
              },
            ),
            ListTile(
              leading: const Icon(Icons.speaker_notes, color: Colors.white),
              title: const Text(
                'Verifique a assembleia',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the assembleia page.
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.white),
              title: const Text(
                'Atualize seus dados pessoais',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the dados_pessoais page.
              },
            ),
            ListTile(
              leading: const Icon(Icons.payments, color: Colors.white),
              title: const Text(
                'Verifique seus pagamentos',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the pagamentos page.
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.white),
              title: const Text(
                'Verifique seu plano',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the plano page.
              },
            ),
          ],
        ),
      ),
    );
  }
}
