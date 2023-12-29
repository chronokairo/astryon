import 'package:flutter/material.dart';
import 'package:priorizza/app/widgets/myfooter.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: const Column(
        children: [
          QuestionAnswerTile(
            question: 'O que é um consórcio?',
            answer:
                'Um consórcio é uma ótima forma de adquirir um bem ou serviço sem pagar juros. Funciona como uma poupança coletiva, formando grupos com interesses similares.',
          ),
          QuestionAnswerTile(
            question: 'Como funciona um consórcio?',
            answer:
                'Você entra em um grupo, contribui mensalmente e aguarda ser contemplado para receber uma carta de crédito para adquirir o bem desejado.',
          ),
          QuestionAnswerTile(
            question: 'Quais são os tipos de consórcio?',
            answer:
                'Existem diversos tipos de consórcio, como carros, imóveis, motos, viagens e até serviços. Escolha o que mais combina com você!',
          ),
          QuestionAnswerTile(
            question: 'Vantagens do consórcio:',
            answer:
                'Sem juros, flexibilidade nos prazos, chances de antecipar a contemplação e participação em grupos com interesses comuns.',
          ),
          MyFooter()
        ],
      ),
    );
  }
}

class QuestionAnswerTile extends StatelessWidget {
  final String question;
  final String answer;

  const QuestionAnswerTile({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0x99000000),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        title: Text(
          question,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              answer,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
