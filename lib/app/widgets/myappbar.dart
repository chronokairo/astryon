import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../paginas/areadocliente/loginscreen/login_screen.dart';
import '../paginas/consorcios/consorcios.dart';
import '../paginas/home/inicio.dart';
import '../theme/appcolors.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
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
              color: AppColors.backgroundColor,
              fontSize: 16, // Ajuste o tamanho da fonte conforme necessário
              // Ajuste a espessura da fonte conforme necessário
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const Consorcios()),
            );
          },
          child: const Text(
            'Consórcios',
            style: TextStyle(
              color: AppColors.backgroundColor,
              fontSize: 16, // Ajuste o tamanho da fonte conforme necessário
              // Ajuste a espessura da fonte conforme necessário
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            launchUrl(Uri.parse('https://blog.priorizza.app'));
          },
          child: const Text(
            'Blog',
            style: TextStyle(
              color: AppColors.backgroundColor,
              fontSize: 16, // Ajuste o tamanho da fonte conforme necessário
              // Ajuste a espessura da fonte conforme necessário
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
            backgroundColor:
                AppColors.primaryColor, // Altere a cor do texto do botão
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(48.0),
            ),
          ),
          child: const Text(
            'Área do Cliente',
            style: TextStyle(
              fontSize: 16, // Ajuste o tamanho da fonte conforme necessário
             // Ajuste a espessura da fonte conforme necessário
            ),
          ),
        ),
      ],
    );
  }
}

void launchUrl(Uri uri) async {
  // ignore: deprecated_member_use
  if (await canLaunch(uri.toString())) {
    // ignore: deprecated_member_use
    await launch(uri.toString());
  } else {
    throw 'Could not launch $uri';
  }
}
