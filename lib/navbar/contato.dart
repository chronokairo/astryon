import 'package:flutter/material.dart';

class Contato extends StatelessWidget {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Priorizza Grupo de Investimento',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Telefone: (92) 91234-5678',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'E-mail: contato@priorizza.app',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Endereço:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Text(
              'Avenida Alvaro Maia, 977',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'São Geraldo',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Manaus - AM',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
