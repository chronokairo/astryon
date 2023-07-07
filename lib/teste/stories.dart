import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Story List'),
        ),
        body: Container(
          width: double.infinity,
          height: 500,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 268.333,
                child: GestureDetector(
                  onTap: () {
                    // Adicione a ação desejada aqui
                    print('Simule');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/honda/2.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                             
                              
                              SizedBox(height: 380),
                              ElevatedButton(
                                onPressed: () {
                                  // Adicione a ação desejada aqui
                                  print('Simule seu consórcio');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFD8B45E),
                                  minimumSize: Size(double.infinity, 50),
                                ),
                                child: Text('Simular'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               Container(
                width: 268.333,
                child: GestureDetector(
                  onTap: () {
                    // Adicione a ação desejada aqui
                    print('Simule');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/honda/3.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                             
                              
                              SizedBox(height: 380),
                              ElevatedButton(
                                onPressed: () {
                                  // Adicione a ação desejada aqui
                                  print('Simule seu consórcio');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFD8B45E),
                                  minimumSize: Size(double.infinity, 50),
                                ),
                                child: Text('Simular'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               Container(
                width: 268.333,
                child: GestureDetector(
                  onTap: () {
                    // Adicione a ação desejada aqui
                    print('Simule');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/honda/4.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                             
                              
                              SizedBox(height: 380),
                              ElevatedButton(
                                onPressed: () {
                                  // Adicione a ação desejada aqui
                                  print('Simule seu consórcio');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFD8B45E),
                                  minimumSize: Size(double.infinity, 50),
                                ),
                                child: Text('Simular'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               Container(
                width: 268.333,
                child: GestureDetector(
                  onTap: () {
                    // Adicione a ação desejada aqui
                    print('Simule');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/honda/5.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                             
                              
                              SizedBox(height: 380),
                              ElevatedButton(
                                onPressed: () {
                                  // Adicione a ação desejada aqui
                                  print('Simule seu consórcio');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFD8B45E),
                                  minimumSize: Size(double.infinity, 50),
                                ),
                                child: Text('Simular'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               Container(
                width: 268.333,
                child: GestureDetector(
                  onTap: () {
                    // Adicione a ação desejada aqui
                    print('Simule');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/honda/6.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                             
                              
                              SizedBox(height: 380),
                              ElevatedButton(
                                onPressed: () {
                                  // Adicione a ação desejada aqui
                                  print('Simule seu consórcio');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFD8B45E),
                                  minimumSize: Size(double.infinity, 50),
                                ),
                                child: Text('Simular'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              
              
              Container(
                width: 268.333,
                child: GestureDetector(
                  onTap: () {
                    // Adicione a ação desejada aqui
                    print('Simule');
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/story2.jpg',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.directions_car,
                                color: Colors.white,
                                size: 80,
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Consórcio de Veículo',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Carros, motos e náuticos com pagamento em até 70 meses. Crédito de R\$ 25mil a R\$ 70 mil.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 16),
                              ElevatedButton(
                                onPressed: () {
                                  // Adicione a ação desejada aqui
                                  print('Simule seu consórcio');
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFD8B45E),
                                  minimumSize: Size(double.infinity, 50),
                                ),
                                child: Text('Conheça'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
