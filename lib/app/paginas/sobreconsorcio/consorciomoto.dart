import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/faqfooter.dart';
import '../../widgets/myappbar.dart';

class ConsorcioMotoEletricaPage extends StatelessWidget {
  const ConsorcioMotoEletricaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/banner/wallpaper.png"), // Substitua pelo caminho da sua imagem de background
            fit: BoxFit.cover,
          ),
        ),
        child: const SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(),
              Text(
                'Consórcio de Moto Elétrica',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Um consórcio de moto elétrica é uma modalidade de compra coletiva de motocicletas movidas a energia elétrica. Nesse modelo, um grupo de pessoas se une para contribuir mensalmente com um valor estabelecido, e a cada mês um ou mais participantes são contemplados com a carta de crédito para aquisição da moto elétrica desejada.',
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
              Text(
                  '- Possibilidade de adquirir uma moto elétrica sem pagar juros'),
              Text(
                  '- Parcelas mais acessíveis em comparação a um financiamento'),
              Text('- Contribuição para a preservação do meio ambiente'),
              Text('- Economia em relação aos gastos com combustível'),
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
                  '4. Utilize a carta de crédito para comprar a moto elétrica desejada'),
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
