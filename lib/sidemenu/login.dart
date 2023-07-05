import 'package:flutter/material.dart';
import 'package:priorizza/sidemenu/recuperar_senha.dart';

class TelaDeLogin extends StatefulWidget {
  const TelaDeLogin({Key? key}) : super(key: key);

  @override
  State<TelaDeLogin> createState() {
    return _TelaDeLoginState();
  }
}

class _TelaDeLoginState extends State<TelaDeLogin> {
  bool _senhaVisivel = false;

  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: const Text("Login"),
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
            TextField(
              controller: _cpfController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "CPF",
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _senhaController,
              obscureText: !_senhaVisivel,
              decoration: InputDecoration(
                labelText: "Senha",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _senhaVisivel = !_senhaVisivel;
                    });
                  },
                  icon: Icon(
                      _senhaVisivel ? Icons.visibility_off : Icons.visibility),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TelaDeRecuperacaoDeSenha()),
                );
              },
              child: const Text("Esqueceu a senha?"),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // lógica para fazer o login
              },
              child: const Text("Entrar"),
            ),
          ],
        ),
      ),
    );
  }
}