import 'package:flutter/material.dart';
import 'package:priorizza/home/login.dart';

class SouCliente extends StatelessWidget {
  const SouCliente({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TelaDeLogin()),
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
      ),
      child: const Text(
        "Sou Cliente",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

class SimularComprar extends StatelessWidget {
  const SimularComprar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // lógica para simular e comprar
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      icon: const Icon(
        Icons.shopping_cart,
        color: Colors.black,
      ),
      label: const Text(
        "Simular e Comprar",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}

class MinhaTela extends StatelessWidget {
  const MinhaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Priorizza Grupo de Investimento"),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Flexible(
              child: SizedBox(
                child: SouCliente(),
              ),
            ),
            Flexible(
              child: SizedBox(
                child: SimularComprar(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
