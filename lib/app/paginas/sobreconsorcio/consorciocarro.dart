import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../areadocliente/loginscreen/login_screen.dart';
import '../consorcios/consorcios.dart';
import '../../widgets/faqfooter.dart';
import '../home/inicio.dart';

class ConsorcioCarroPage extends StatelessWidget {
  const ConsorcioCarroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true, // Remover o botão de voltar
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
        child:  SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Consórcio de Carro',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Um consórcio de carro é uma modalidade de compra baseada na união de pessoas físicas ou jurídicas que têm o interesse de adquirir um veículo. Consiste em formar um grupo de participantes que contribuem mensalmente com um valor pré-determinado e, por meio de sorteios ou lances, são contemplados com a carta de crédito para a aquisição do veículo desejado.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Benefícios do Consórcio:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text('- Possibilidade de adquirir um carro sem pagar juros'),
              Text(
                  '- Parcelas mais acessíveis em comparação a um financiamento'),
              Text(
                  '- Flexibilidade para escolher o prazo e o valor das parcelas'),
              Text('- Opção de antecipar a contemplação através de lances'),
              SizedBox(height: 16),
              Text(
                'Como funciona:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                  '1. Escolha o valor do crédito e o prazo que deseja participar'),
              Text('2. Pague as parcelas mensais'),
              Text('3. Aguarde a contemplação por meio de sorteios ou lance'),
              Text(
                  '4. Utilize a carta de crédito para comprar o carro desejado'),
              SizedBox(height: 16),
              Text(
                'Entre em contato clicando no ícone do whatsapp abaixo para mais informações:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              FaqFooter(),
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
