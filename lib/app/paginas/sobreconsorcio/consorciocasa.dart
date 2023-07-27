import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:priorizza/app/widgets/faqfooter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/myappbar.dart';

class ConsorcioCasaPage extends StatelessWidget {
  const ConsorcioCasaPage({super.key});

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
                'Consórcio de Casa',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'O consórcio de casa é uma forma de adquirir um imóvel por meio da união de pessoas que têm o objetivo de comprar uma casa. Funciona como um autofinanciamento coletivo, onde os participantes contribuem mensalmente com uma quantia determinada, e a cada mês um ou mais membros são contemplados com a carta de crédito para adquirir sua casa própria.',
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
              Text('- Possibilidade de adquirir uma casa sem pagar juros'),
              Text(
                  '- Parcelas mais acessíveis em comparação a um financiamento'),
              Text(
                  '- Flexibilidade para escolher o valor do crédito e o prazo'),
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
                  '4. Utilize a carta de crédito para comprar a casa desejada'),
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
