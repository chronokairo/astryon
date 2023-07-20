import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: Container(
          color: const Color(0x99000000), // Adicionando transparência ao Drawer
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Seu Nome'),
                accountEmail: Text('seuemail@example.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.png'), // Adicione uma imagem de avatar aqui
                ),
                decoration: BoxDecoration(
                  color: Colors.blue, // Cor de fundo do cabeçalho
                ),
              ),
              const Divider(color: Colors.white), // Divisor após o cabeçalho
              ListTile(
                leading: const Icon(Icons.receipt_long, color: Colors.white),
                title: const Text('Emitir Boleto', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Navigate to the boleto page.
                },
              ),
              const Divider(color: Colors.white), // Divisor após o primeiro item
              ListTile(
                leading: const Icon(Icons.monetization_on, color: Colors.white),
                title: const Text('Ofertar Lance', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Navigate to the lance page.
                },
              ),
              const Divider(color: Colors.white), // Divisor após o segundo item
              ListTile(
                leading: const Icon(Icons.calendar_today, color: Colors.white),
                title: const Text('Verificar Assembleia', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Navigate to the assembleia page.
                },
              ),
              const Divider(color: Colors.white), // Divisor após o terceiro item
              ListTile(
                leading: const Icon(Icons.person_outline, color: Colors.white),
                title: const Text('Atualizar Dados Pessoais', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Navigate to the dados_pessoais page.
                },
              ),
              const Divider(color: Colors.white), // Divisor após o quarto item
              ListTile(
                leading: const Icon(Icons.payment, color: Colors.white),
                title: const Text('Verificar Pagamentos', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Navigate to the pagamentos page.
                },
              ),
              const Divider(color: Colors.white), // Divisor após o quinto item
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text('Verificar Plano', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Navigate to the plano page.
                },
              ),
              const Divider(color: Colors.white), // Divisor após o sexto item
            ],
          ),
        ),
      );
    
  }
}
