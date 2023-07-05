import 'package:flutter/material.dart';

class QuemSomos extends StatelessWidget {
  const QuemSomos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quem Somos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Sobre a Priorizza',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'A Priorizza é uma empresa com mais de 20 anos de experiência no mercado de consórcios. Nosso objetivo é oferecer soluções financeiras flexíveis e acessíveis para nossos clientes, ajudando-os a realizar seus sonhos e projetos.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Missão',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Text(
              'Nossa missão é proporcionar aos nossos clientes uma experiência única e satisfatória ao participar de nossos consórcios, oferecendo atendimento personalizado e transparente, além de produtos e serviços de qualidade.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Visão',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Text(
              'Nossa visão é ser referência no mercado de consórcios, reconhecida pela excelência no atendimento e qualidade de nossos produtos e serviços, gerando valor para nossos clientes e colaboradores.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Valores',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Text(
              'Nossos valores são baseados em ética, transparência, comprometimento, respeito e responsabilidade social.',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
