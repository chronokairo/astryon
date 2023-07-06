import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
 import 'package:font_awesome_flutter/font_awesome_flutter.dart';     

import 'atendimento.dart';

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
        elevation: 0,  
  actions: [
    TextButton(
  onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Inicio()),
            );
  },
  child: Text('Início',style: TextStyle(
      color: Colors.white,
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
      color: Colors.white,
    ),
    ),
),
TextButton(
  onPressed: () {
    launch('https://blog.priorizza.app');
  },
  child: Text('Blog',style: TextStyle(
      color: Colors.white,
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
            Image.asset(
                  'assets/logo.png', // Substitua pelo caminho da imagem do seu logo
                  width: 400,
                  height: 200,
                ),
             Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                
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
      print('Simule');
    },
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 80,
            ),
            SizedBox(height: 16),
            Text(
              'Consórcio de Imóveis',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'A melhor opção para quem quer comprar uma casa!',
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
      child: Padding(
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
              'Consórcio de Carros',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'A melhor opção para quem quer comprar um carro!',
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.motorcycle,
              color: Colors.white,
              size: 80,
            ),
            SizedBox(height: 16),
            Text(
              'Consórcio de Motos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'A melhor opção para quem quer comprar uma moto!',
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_shipping,
              color: Colors.white,
              size: 80,
            ),
            SizedBox(height: 16),
            Text(
              'Consórcio de Pesados',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'A melhor opção para quem quer comprar um veículo pesado!',
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
            height: 100,
            width: 400,
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
          
          
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
  icon: Icon(FontAwesomeIcons.facebook),
  color: Colors.white,
  onPressed: () {
    // Ação desejada para o Facebook
  },
),
IconButton(
  icon: Icon(FontAwesomeIcons.instagram),
  color: Colors.white,
  onPressed: () {
    // Ação desejada para o Instagram
  },
),
IconButton(
  icon: Icon(FontAwesomeIcons.linkedin),
  color: Colors.white,
  onPressed: () {
    // Ação desejada para o LinkedIn
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
            child: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white,),
                      backgroundColor: Color(0xFF25D366),
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
      