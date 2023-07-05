import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../sidemenu/atendimento.dart';

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
         iconTheme: IconThemeData(
    color:  Color(0xFFD8B45E), // Define a cor desejada para o ícone
  ),      
backgroundColor: Colors.transparent,
        elevation: 0,  title: Text(
    'PRIORIZZA',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Color(0xFFD8B45E),
    ),
  ),
  actions: [
    
    TextButton(
  onPressed: () {
    launch('https://blog.priorizza.app');
  },
  child: Text('Blog',style: TextStyle(
      color: Color(0xFFD8B45E),
    ),),
),
    TextButton(
      onPressed: () {
        // Lógica para lidar com o clique no botão "Boleto"
      },
      child: Text('2ª via Boleto',style: TextStyle(
      color: Color(0xFFD8B45E),
    ),),
    ),
    TextButton(
  onPressed: () {},
  child: PopupMenuButton(
    child: Text('Menu',style: TextStyle(
      color: Color(0xFFD8B45E),
    ),),
    itemBuilder: (BuildContext context) => [
      PopupMenuItem(
        child: Text('Cliente'),
        value: 'cliente',
      ),
      PopupMenuItem(
        child: Text('A Priorizza'),
        value: 'a_priorizza',
      ),
      PopupMenuItem(
        child: Text('O Consórcio'),
        value: 'o_consorcio',
      ),
      PopupMenuItem(
        child: Text('Central de ajuda'),
        value: 'central_ajuda',
      ),
    ],
  ),
)

   
    
  ],
        
          
        ),
      
      body: 
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/banner.png'), // Substitua pelo caminho da sua imagem
              fit: BoxFit.cover,
            ),),
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
            print('Simule seu consórcio de imóveis');
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
                  size: 40,
                ),
                Text(
                  'Consórcio de imóveis',
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
            print('Simule seu consórcio de motos');
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.home, color: Color(0xFFD8B45E),
                  size: 40,
                ),
                Text(
                  'Consórcio de motos',
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
            print('Simule seu consórcio de carros');
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
                  size: 40,
                ),
                Text(
                  'Consórcio de carros',
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

          // Adicione mais perguntas e respostas aqui...
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            launchWhatsApp();
          },
            backgroundColor: Color(0xFFD8B45E), // Defina a cor de fundo como âmbar

          child: Icon(Icons.chat),
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
      