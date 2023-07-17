import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/faqfooter.dart';

class ConsorcioServicosPage extends StatelessWidget {
  const ConsorcioServicosPage({super.key});

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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Consórcio de Serviços',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'O consórcio de serviços é uma modalidade de consórcio que permite aos participantes contratar serviços específicos por meio de um sistema de autofinanciamento coletivo. Nessa modalidade, os participantes contribuem mensalmente com um valor pré-determinado e, em cada mês, um ou mais participantes são contemplados com a carta de crédito para a contratação do serviço desejado.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Benefícios do Consórcio de Serviços:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text('- Possibilidade de contratar serviços sem pagar juros'),
              Text(
                  '- Contribuições mensais acessíveis em comparação a outras formas de pagamento'),
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
                  '4. Utilize a carta de crédito para contratar o serviço desejado'),
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
