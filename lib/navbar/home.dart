import 'package:flutter/material.dart';

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
        centerTitle: true,
        title: const Text(
          'Consórcio Priorizza',
        ),
        backgroundColor: const Color(0xFFD8B45E),
      ),
      drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
           const UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: const Color(0xFFD8B45E)),
        accountName: Text(
          "Uma vida priorizzando você!!",
          style: TextStyle(
            
          ),
        ),
        accountEmail: Text(
          "contato@priorizza.app",
          style: TextStyle(
            
          ),
        ),
        currentAccountPicture: FlutterLogo(),
      ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Detalhes da cota'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(
              Icons.account_balance_wallet,
            ),
            title: const Text('Boletos'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.groups),
            title: const Text('Assembleias'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(
              Icons.query_stats,
            ),
            title: const Text('Ofertas de lance'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Serviços'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.location_city),
            title: const Text('Filiais'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.assignment_turned_in),
            title: const Text('Minhas solicitações'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.restore),
            title: const Text('Devolução de valores'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.chat_bubble),
            title: const Text('Canais de atendimento'),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AtendimentoClienteScreen()))
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Sair'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    ),
      body: ListView(
        children: [
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
    );
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
      