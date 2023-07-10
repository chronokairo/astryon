import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class ConsorcioServicosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consórcio de Serviços'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Consórcio de Serviços',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'O consórcio de serviços é uma modalidade de consórcio que permite aos participantes contratar serviços específicos por meio de um sistema de autofinanciamento coletivo. Nessa modalidade, os participantes contribuem mensalmente com um valor pré-determinado e, em cada mês, um ou mais participantes são contemplados com a carta de crédito para a contratação do serviço desejado.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Benefícios do Consórcio de Serviços:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text('- Possibilidade de contratar serviços sem pagar juros'),
            const Text('- Contribuições mensais acessíveis em comparação a outras formas de pagamento'),
            const Text('- Flexibilidade para escolher o valor do crédito e o prazo'),
            const Text('- Opção de antecipar a contemplação através de lances'),
            const SizedBox(height: 16),
            const Text(
              'Como funciona:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text('1. Escolha o valor do crédito e o prazo que deseja participar'),
            const Text('2. Pague as parcelas mensais'),
            const Text('3. Aguarde a contemplação por meio de sorteios ou lance'),
            const Text('4. Utilize a carta de crédito para contratar o serviço desejado'),
            const SizedBox(height: 16),
            const Text(
              'Entre em contato conosco para mais informações:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text('Telefone: (11) 1234-5678'),
            const Text('E-mail: contato@consorcio.com'),
          ],
        ),
      ),floatingActionButton: FloatingActionButton(
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