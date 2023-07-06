import 'package:flutter/material.dart';

class GruposConsorcioUm {
  static List<String> grupos = [
    'Grupo 1',
    'Grupo 2',
    'Grupo 3',
    'Grupo 4',
    'Grupo 5',
    'Grupo 6',
    'Grupo 7',
    'Grupo 8',
    'Grupo 9',
    'Grupo 10',
  ];

  static void navigateToDetalhesGrupo(BuildContext context, String grupo) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetalhesGrupoPage(grupo: grupo),
      ),
    );
  }
}
