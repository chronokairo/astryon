import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class ConsorcioCarroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consórcio de Carro'),
      ),
      body: Padding(
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
            Text('- Parcelas mais acessíveis em comparação a um financiamento'),
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
            Text('4. Utilize a carta de crédito para comprar o carro desejado'),
            SizedBox(height: 16),
            Text(
              'Entre em contato conosco para mais informações:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text('Telefone: (11) 1234-5678'),
            Text('E-mail: contato@consorcio.com'),
          ],
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