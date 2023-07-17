import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Inicio()),
            );
          },
          child: const Text('Início'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Consorcios()),
            );
          },
          child: const Text('Consórcios'),
        ),
        ElevatedButton(
          onPressed: () {
            launchUrl('https://blog.priorizza.app' as Uri);
          },
          child: const Text('Blog'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          child: const Text('Área do Cliente'),
        ),
      ],
    );
  }
}
