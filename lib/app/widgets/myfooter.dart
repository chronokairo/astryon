import 'package:flutter/material.dart';

class MyFooter extends StatelessWidget {
  const MyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      // Adicionando bordas arredondadas ao Container
      decoration: BoxDecoration(
        color:  Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: 400,
            child: Image.asset(
              'assets/logo.png', // Substitua pelo caminho da imagem do logo
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Antonio Victor Pimentel Pires LTDA',
            style: TextStyle(fontSize: 16),
          ),
          const Text(
            'CNPJ: 41.414.474/0001-67',
            style: TextStyle(fontSize: 14),
          ),
          const Text(
            'Autorizado pelo Banco Central Nº 3/00/223/88',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  // Ação desejada para o Facebook
                },
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
                label: const Text(
                  'Siga-nos no Facebook',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue, // Cor do texto do botão
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
