import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 import 'package:font_awesome_flutter/font_awesome_flutter.dart';     

import '../sidemenu/atendimento.dart';

import '../sidemenu/consorcios.dart';

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

         iconTheme: IconThemeData(
    color:  Color(0xFFD8B45E), // Define a cor desejada para o ícone
  ),      
backgroundColor: Colors.transparent,
        elevation: 0,  title: Text(
    'Consórcio Priorizza',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Color(0xFFD8B45E),
    ),
  ),
  actions: [
    TextButton(
  onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Inicio()),
            );
  },
  child: Text('Início',style: TextStyle(
      color: Color(0xFFD8B45E),
    ),
    ),
),
TextButton(
  onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Consorcios()),
            );
  },
  child: Text('Assembleias',style: TextStyle(
      color: Color(0xFFD8B45E),
    ),
    ),
),
TextButton(
  onPressed: () {
    launch('https://blog.priorizza.app');
  },
  child: Text('Blog',style: TextStyle(
      color: Color(0xFFD8B45E),
    ),
    ),
),   
  ],            
        ),
      
      body: 
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           
        
          
          Container(
  width: double.infinity,
  height: 300,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Container(
        width: 268.333,
        child: GestureDetector(
          onTap: () {
            // Adicione a ação desejada aqui
            print('Simule seu consórcio de Imóveis');
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.home,color: Color(0xFFD8B45E),
                  size: 100,
                ),
                Text(
                  'Consórcio de Imóveis',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Adicione a ação desejada aqui
                    print('Simule seu consórcio');
                  },
                  style: ElevatedButton.styleFrom(
    primary:  Color(0xFFD8B45E), // Defina a cor desejada aqui
  ),
                  child: Text('Simule seu consórcio'),
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
            print('Simule seu consórcio de Carros');
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.directions_car,color:  Color(0xFFD8B45E),
                  size: 100,
                ),
                Text(
                  'Consórcio de Carros',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Adicione a ação desejada aqui
                    print('Simule seu consórcio');
                  },
                  style: ElevatedButton.styleFrom(
    primary:  Color(0xFFD8B45E), // Defina a cor desejada aqui
  ),
                  child: Text('Simule seu consórcio'),
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
            print('Simule seu consórcio de Motos');
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.motorcycle,color:  Color(0xFFD8B45E),
                  size: 100,
                ),
                Text(
                  'Consórcio de Motos',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Adicione a ação desejada aqui
                    print('Simule seu consórcio');
                  },
                  style: ElevatedButton.styleFrom(
    primary:  Color(0xFFD8B45E), // Defina a cor desejada aqui
  ),
                  child: Text('Simule seu consórcio'),
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
            print('Simule seu consórcio de pesados');
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.local_shipping,color: Color(0xFFD8B45E),
                  size: 100,
                ),
                Text(
                  'Consórcio de Pesados',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Adicione a ação desejada aqui
                    print('Simule seu consórcio');
                  },
                  style: ElevatedButton.styleFrom(
    primary:  Color(0xFFD8B45E), // Defina a cor desejada aqui
  ),
                  child: Text('Simule seu consórcio'),
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
            print('Simule seu consórcio de Serviços');
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.flight,color:  Color(0xFFD8B45E),
                  size: 100,
                ),
                Text(
                  'Consórcio de Serviços',
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Adicione a ação desejada aqui
                    print('Simule seu consórcio');
                  },
                  style: ElevatedButton.styleFrom(
    primary:  Color(0xFFD8B45E), // Defina a cor desejada aqui
  ),
                  child: Text('Simule seu consórcio'),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
    
  ),
  
),
QuestionAnswerTile(
            question: 'O que é um consórcio?',
            answer:
                'Um consórcio é uma modalidade de compra em grupo, onde os participantes contribuem mensalmente para formar uma poupança coletiva destinada à compra de um bem, como um carro ou uma casa.',
                
          ),
          QuestionAnswerTile(
            question: 'Quais são as vantagens do consórcio?',
            answer:
                'Algumas vantagens do consórcio incluem: não pagar juros, ter prazos flexíveis, participar de sorteios para antecipar a contemplação, e poder usar o valor do crédito para comprar o bem desejado.',
          ),
          QuestionAnswerTile(
            question: 'Como funciona a contemplação?',
            answer:
                'A contemplação no consórcio ocorre quando o participante é sorteado ou quando é realizado um lance vencedor. A contemplação permite que o participante utilize seu crédito para a compra do bem desejado.',
          ),
          QuestionAnswerTile(
            question: 'Quais são as formas de contato?',
            answer:
                'Para obter mais informações sobre consórcios, entre em contato conosco através dos seguintes canais:\n\nTelefone: (92) 98508-0304\nE-mail: contato@priorizza.app\nBlog: blog.priorizza.app',
          ),
          Container(
      color: Color(0xFFD8B45E),
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            child: Image.asset('assets/logo.png'), // Substitua pelo caminho da imagem do logo
          ),
          SizedBox(height: 12),
          Text(
            'Antonio Victor Pimentel Pires LTDA',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          Text(
            'CNPJ: 41.414.474/0001-67',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          Text(
            'Autorizado pelo Banco Central Nº 3/00/223/88',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          Text(
            'Data: 15/08/88',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.facebook),
                color: Colors.white,
                onPressed: () {
                  // Ação desejada para o Facebook
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.white,
                onPressed: () {
                  // Ação desejada para o Instagram
                },
              ),
              IconButton(
                icon: Icon(Icons.chat),
                color: Colors.white,
                onPressed: () {
                  // Ação desejada para o Twitter
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
      
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            launchWhatsApp();
          },
            child: FaIcon(FontAwesomeIcons.whatsapp),
                      backgroundColor: Colors.green.shade800,
        ),
      
    );
  }
  void launchWhatsApp() async {
    String phoneNumber = '+5592985080304'; // Número de telefone do destinatário
    String message = 'Olá, eu gostaria de saber mais!!'; // Mensagem a ser enviada
    String whatsappUrl = 'https://wa.me/$phoneNumber?text=${Uri.encodeFull(message)}';

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
      