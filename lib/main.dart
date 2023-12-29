import 'package:flutter/material.dart';
import 'app/paginas/home/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consórcio Priorizza',
      theme: ThemeData.dark(), // Adicionando o tema padrão do Flutter
      home: const Inicio(),
    );
  }
}
