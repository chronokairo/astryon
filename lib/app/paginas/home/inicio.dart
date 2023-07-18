import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:priorizza/app/widgets/myappbar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/sidebar.dart';
import '../sobreconsorcio/consorciocarro.dart';
import '../sobreconsorcio/consorciocasa.dart';
import '../sobreconsorcio/consorciomoto.dart';
import '../sobreconsorcio/consorciopesado.dart';
import '../sobreconsorcio/consorcioservico.dart';
import '../../widgets/faq.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  InicioState createState() => InicioState();
}

class InicioState extends State<Inicio> {
  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const SideBar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/background_image.png"), // Substitua pelo caminho da sua imagem de background
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/logo.png', // Substitua pelo caminho da imagem do seu logo
                      width: 300,
                      height: 150,
                    ),
                  ),
                ],
              ),

              SizedBox(
                width: double.infinity,
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 268.333,
                      child: GestureDetector(
                        onTap: () {
                          // Adicione a ação desejada aqui
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/banner/casa.png"), // Substitua pelo caminho da sua imagem de background
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.home,
                                        color: Colors.white,
                                        size: 80,
                                      ),
                                      const SizedBox(height: 16),
                                      const Text(
                                        'Casa, apartamento e quitação de financiamento em até 200 meses. Crédito de R\$ 50 mil a R\$ 500 mil.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ConsorcioCasaPage()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0x99000000),
                                          minimumSize:
                                              const Size(double.infinity, 50),
                                        ),
                                        child: const Text('Veja as vantagens'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 268.333,
                      child: GestureDetector(
                        onTap: () {
                          // Adicione a ação desejada aqui
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/banner/autos.png"), // Substitua pelo caminho da sua imagem de background
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.directions_car,
                                        color: Colors.white,
                                        size: 80,
                                      ),
                                      const SizedBox(height: 16),
                                      const Text(
                                        'Carros, motos e náuticos com pagamento em até 70 meses. Crédito de R\$ 25mil a R\$ 70 mil.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ConsorcioCarroPage()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0x99000000),
                                          minimumSize:
                                              const Size(double.infinity, 50),
                                        ),
                                        child: const Text('Conheça'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 268.333,
                      child: GestureDetector(
                        onTap: () {
                          // Adicione a ação desejada aqui
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/banner/bike.png"), // Substitua pelo caminho da sua imagem de background
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.motorcycle,
                                        color: Colors.white,
                                        size: 80,
                                      ),
                                      const SizedBox(height: 16),
                                      const Text(
                                        'De urbana a elétrica, sua nova bike é garantida sem juros, planos a partir de R\$ 25 mil em até 70 meses.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ConsorcioMotoEletricaPage()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0x99000000),
                                          minimumSize:
                                              const Size(double.infinity, 50),
                                        ),
                                        child: const Text('Descubra'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 268.333,
                      child: GestureDetector(
                        onTap: () {
                          // Adicione a ação desejada aqui
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/banner/pesado.png"), // Substitua pelo caminho da sua imagem de background
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.local_shipping,
                                        color: Colors.white,
                                        size: 80,
                                      ),
                                      const SizedBox(height: 16),
                                      const Text(
                                        'Caminhões, ônibus, tratores com pagamento em até 150 meses. Crédito de R\$ 180 mil a R\$ 300 mil.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ConsorcioCaminhaoPage()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0x99000000),
                                          minimumSize:
                                              const Size(double.infinity, 50),
                                        ),
                                        child: const Text('Saiba mais'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 268.333,
                      child: GestureDetector(
                        onTap: () {
                          // Adicione a ação desejada aqui
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/banner/servico.png"), // Substitua pelo caminho da sua imagem de background
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.airplanemode_active,
                                        color: Colors.white,
                                        size: 80,
                                      ),
                                      const SizedBox(height: 16),
                                      const Text(
                                        'Você pode contratar diversos tipos de serviços, com flexibilidade de pagamento.',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 16),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const ConsorcioServicosPage()),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0x99000000),
                                          minimumSize:
                                              const Size(double.infinity, 50),
                                        ),
                                        child: const Text('Planeje agora'),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Adicionando espaçamento entre o logo e o texto
              Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0x99000000),
                          borderRadius: BorderRadius.circular(
                              10), // Adicionando bordas arredondadas
                        ),
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Torne seus sonhos realidade com a garantia de quem é líder no mercado.',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white, // Ajustando a cor do texto
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Faq(),
              // Adicione mais perguntas e respostas aqui...
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launchWhatsApp();
        },
        backgroundColor: const Color(0xFF25D366),
        child: const FaIcon(
          FontAwesomeIcons.whatsapp,
          color: Colors.white,
        ),
      ),
    );
  }

  void launchWhatsApp() async {
    String phoneNumber = '+5592985080304'; // Número de telefone do destinatário
    String message =
        'Olá, eu gostaria de saber mais!!'; // Mensagem a ser enviada
    String whatsappUrl =
        'https://wa.me/$phoneNumber?text=${Uri.encodeFull(message)}';

    // ignore: deprecated_member_use
    if (await canLaunch(whatsappUrl)) {
      // ignore: deprecated_member_use
      await launch(whatsappUrl);
    } else {
      throw 'Não foi possível abrir o WhatsApp.';
    }
  }
}
