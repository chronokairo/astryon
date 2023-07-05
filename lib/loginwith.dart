import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFD8B45E),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png', // Substitua pelo caminho da sua imagem
                width: 150,
                height: 150,
              ),
             
               const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: const [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Login',
                                                fillColor: Colors.white,
                        filled: true,

                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    color: Color(0xFFD8B45E),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 30),

              const Text(
                'Faça login com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Adicione ação para o botão de login com Facebook
                    },
                    icon: Image.asset(
                      'assets/facebook_icon.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Adicione ação para o botão de login com Twitter
                    },
                    icon: Image.asset(
                      'assets/twitter_icon.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Adicione ação para o botão de login com LinkedIn
                    },
                    icon: Image.asset(
                      'assets/linkedin_icon.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
