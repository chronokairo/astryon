import 'package:flutter/material.dart';

class AtendimentoClienteScreen extends StatelessWidget {
  const AtendimentoClienteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD8B45E),
        title: const Text('Atendimento ao Cliente'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Entre em contato conosco',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Mensagem',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              
              onPressed: () {},
              
            
            style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD8B45E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              child: const Text('Enviar'),
                
              ),
            const SizedBox(height: 16.0),
            const Text(
              'Ou entre em contato por telefone',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {},
            style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD8B45E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.phone),
                  SizedBox(width: 8.0),
                  Text('Ligar para o Atendimento ao Cliente'),
                ],
              ),
                
              ),
          ],
        ),
      ),
    );
  }
}
