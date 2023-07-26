import 'package:flutter/material.dart';

import '../paginas/areadocliente/loginscreen/login_with.dart';
import '../paginas/consorcios/consorcios.dart';
import '../paginas/home/inicio.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0x99000000),
      shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30.0), // Valor do raio para tornar a AppBar redonda
        ),
      ),
      elevation: 8, // Adicionando uma sombra à AppBar
      actions: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Inicio()),
            );
          },
          child: const Text(
            'Início',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Consorcios()),
            );
          },
          child: const Text(
            'Consórcios',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginWith()),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor:  Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Deixar o botão redondo
            ),
          ),
          child: const Text('Área do Cliente'),
        ),
      ],
    );
  }
}
