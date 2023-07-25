import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black, // Adicionando transparência ao Drawer
        child: ListView(
          children: [
            // Drawer items
            ListTile(
              leading: const Icon(Icons.receipt_long,
                  color:
                      Colors.white), // Ícone representativo para emitir boleto
              title: const Text(
                'Emitir Boleto',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the boleto page.
              },
            ),
            ListTile(
              leading: const Icon(Icons.monetization_on,
                  color:
                      Colors.white), // Ícone representativo para ofertar lance
              title: const Text(
                'Ofertar Lance',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the lance page.
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_today,
                  color: Colors
                      .white), // Ícone representativo para verificar assembleia
              title: const Text(
                'Verificar Assembleia',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the assembleia page.
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_outline,
                  color: Colors
                      .white), // Ícone representativo para atualizar dados pessoais
              title: const Text(
                'Atualizar Dados Pessoais',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the dados_pessoais page.
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment,
                  color: Colors
                      .white), // Ícone representativo para verificar pagamentos
              title: const Text(
                'Verificar Pagamentos',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                // Navigate to the pagamentos page.
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings,
                  color: Colors
                      .white), // Ícone representativo para verificar plano
              title: const Text(
                'Verificar Plano',
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
