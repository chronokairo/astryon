import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:priorizza/start/cliente/login_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'consorcios.dart';
import 'sobre/consorciocarro.dart';
import 'sobre/consorciocasa.dart';
import 'sobre/consorciomoto.dart';
import 'sobre/consorciopesado.dart';
import 'sobre/consorcioservico.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remover o botão de voltar
        iconTheme: const IconThemeData(
          color: Color(0xFFD8B45E), // Define a cor desejada para o ícone
        ),
        backgroundColor: const Color(0xFF121212),
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
          TextButton(
            onPressed: () {
              launchUrl('https://blog.priorizza.app' as Uri);
            },
            child: const Text(
              'Blog',
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
      ),
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
              Image.asset(
                'assets/logo.png', // Substitua pelo caminho da imagem do seu logo
                width: 300,
                height: 150,
              ),
              Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color(0x99000000),
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Torne seus sonhos realidade com a garantia de quem é líder no mercado.',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
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
                                                    ConsorcioCasaPage()),
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
                                                    ConsorcioCarroPage()),
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
                                        'De urbana a elétrica, sua nova bike é garantida sem juros e com planos a partir de R\$ 25 mil em até 70 meses.',
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
                                                    ConsorcioMotoEletricaPage()),
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
                                                    ConsorcioCaminhaoPage()),
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
                                                    ConsorcioServicosPage()),
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

              Container(
                color: const Color(0xFF121212),
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  children: [
                    const QuestionAnswerTile(
                      question: 'O que é um consórcio?',
                      answer:
                          'Um consórcio é uma modalidade de compra em grupo, onde os participantes contribuem mensalmente para formar uma poupança coletiva destinada à compra de um bem, como um carro ou uma casa.',
                    ),
                    const QuestionAnswerTile(
                      question: 'Quais são as vantagens do consórcio?',
                      answer:
                          'Algumas vantagens do consórcio incluem: não pagar juros, ter prazos flexíveis, participar de sorteios para antecipar a contemplação, e poder usar o valor do crédito para comprar o bem desejado.',
                    ),
                    const QuestionAnswerTile(
                      question: 'Como funciona a contemplação?',
                      answer:
                          'A contemplação no consórcio ocorre quando o participante é sorteado ou quando é realizado um lance vencedor. A contemplação permite que o participante utilize seu crédito para a compra do bem desejado.',
                    ),
                    const QuestionAnswerTile(
                      question: 'Quais são as formas de contato?',
                      answer:
                          'Para obter mais informações sobre consórcios, entre em contato conosco através dos seguintes canais:\n\nTelefone: (92) 98508-0304\nE-mail: contato@priorizza.app\nBlog: blog.priorizza.app',
                    ),
                    SizedBox(
                      height: 100,
                      width: 400,
                      child: Image.asset(
                          'assets/logo.png'), // Substitua pelo caminho da imagem do logo
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Antonio Victor Pimentel Pires LTDA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const Text(
                      'CNPJ: 41.414.474/0001-67',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const Text(
                      'Autorizado pelo Banco Central Nº 3/00/223/88',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.facebook),
                          color: Colors.white,
                          onPressed: () {
                            // Ação desejada para o Facebook
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

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

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Não foi possível abrir o WhatsApp.';
    }
  }
}

class QuestionAnswerTile extends StatelessWidget {
  final String question;
  final String answer;

  const QuestionAnswerTile({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(question),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(answer),
        ),
      ],
    );
  }
}
