import 'package:flutter/material.dart';

import '../../../widgets/mydrawer2.dart';

class LoginWith extends StatefulWidget {
  const LoginWith({Key? key}) : super(key: key);

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
            image: AssetImage("assets/background_image.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
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
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Grupo',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        controller: column3Controller,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Cota',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextField(
                        controller: column6Controller,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'CPF',
                          labelStyle: TextStyle(color: Colors.white),
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
                                builder: (context) => MyDrawer2(
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
    // Implement your login authentication logic here
    // For example, check the values against a database or server.
    // If the login is successful, return true; otherwise, return false.
    // Replace this placeholder logic with your actual authentication mechanism.
    return true;
  }
}
