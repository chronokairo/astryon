import 'package:flutter/material.dart';

class TelaDeRecuperacaoDeSenha extends StatelessWidget {
  const TelaDeRecuperacaoDeSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperar Senha ou Primeiro Acesso"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "CPF",
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: "Data de Nascimento",
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // lógica para enviar o email de recuperação de senha
              },
              child: const Text("Confirmar"),
            ),
          ],
        ),
      ),
    );
  }
}