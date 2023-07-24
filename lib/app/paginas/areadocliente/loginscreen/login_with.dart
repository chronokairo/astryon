import 'package:flutter/material.dart';
import 'package:priorizza/app/paginas/areadocliente/loginscreen/userinfo.dart';
import 'package:priorizza/app/widgets/sidebar.dart';

class LoginWith extends StatefulWidget {
  const LoginWith({super.key});

  @override
  LoginWithState createState() => LoginWithState();
}

class LoginWithState extends State<LoginWith> {
  TextEditingController column2Controller = TextEditingController();
  TextEditingController column3Controller = TextEditingController();
  TextEditingController column6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/background_image.png"), // Substitua pelo caminho da sua imagem de background
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png', // Substitua pelo caminho da sua imagem
                  width: 300,
                  height: 150,
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextField(
                        controller: column2Controller,
                        style: const TextStyle(color: Colors.white), // Define a cor branca para o texto digitado
                        decoration: const InputDecoration(
                          labelText: 'Grupo',
                          labelStyle: TextStyle(color: Colors.white), // Define a cor branca para o labelText
                        ),
                      ),
                      TextField(
                        controller: column3Controller,
                        style: const TextStyle(color: Colors.white), // Define a cor branca para o texto digitado
                        decoration: const InputDecoration(
                          labelText: 'Cota',
                          labelStyle: TextStyle(color: Colors.white), // Define a cor branca para o labelText
                        ),
                      ),
                      TextField(
                        controller: column6Controller,
                        style: const TextStyle(color: Colors.white), // Define a cor branca para o texto digitado
                        decoration: const InputDecoration(
                          labelText: 'CPF',
                          labelStyle: TextStyle(color: Colors.white), // Define a cor branca para o labelText
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                        ),
                        onPressed: () {
                          String column2 = column2Controller.text;
                          String column3 = column3Controller.text;
                          String column6 = column6Controller.text;

                          // Check login credentials against the CSV data
                          if (_checkLogin(column2, column3, column6)) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SideBar(
                                  column2: column2,
                                  column3: column3,
                                  column6: column6,
                                ),
                              ),
                            );
                          } else {
                            // Invalid login, show a message or alert the user
                            // For example:
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Invalid login')),
                            );
                          }
                        },
                        child: const Text('Entrar'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _checkLogin(String column2, String column3, String column6) {
    // Check if the provided credentials match any row in the CSV data
    for (int i = 0; i < csvData.length; i++) {
      List<dynamic> row = csvData[i];
      if (row[1].toString() == column2 &&
          row[2].toString() == column3 &&
          row[5].toString() == column6) {
        return true;
      }
    }
    return false;
  }
}
