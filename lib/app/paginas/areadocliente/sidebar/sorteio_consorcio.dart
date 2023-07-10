import 'package:flutter/material.dart';

class SorteioConsorcioScreen extends StatelessWidget {
  final String numeroSorteio;
  final String contemplado;
 

  const SorteioConsorcioScreen({
    Key? key,
    required this.numeroSorteio,
    required this.contemplado,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sorteio - Número $numeroSorteio'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contemplado: $contemplado',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            
          ],
        ),
      ),
    );
  }
}
