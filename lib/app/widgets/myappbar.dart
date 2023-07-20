import 'package:flutter/material.dart';

import '../paginas/areadocliente/loginscreen/login_screen.dart';
import '../paginas/consorcios/consorcios.dart';
import '../paginas/home/inicio.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
            backgroundColor:  Colors.black,

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
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xFFD8B45E),
          ),
          child: const Text('Área do Cliente'),
        ),
      ],
    );
  }
}
