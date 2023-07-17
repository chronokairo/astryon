import 'package:flutter/material.dart';

class FaqFooter extends StatelessWidget {
  const FaqFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          const QuestionAnswerTile(
            question: 'O que é um consórcio?',
            answer:
                'O consórcio pode ser entendido como uma modalidade de compra para adquirir um bem ou um serviço. Os consórcios chegaram ao Brasil na década de 1960 e hoje já estão presentes em outros países. O consórcio é uma opção para quem tem como objetivo conquistar um bem durável, mas não tem muita pressa em adquirí-lo.\n\nPara que o consórcio funcione, é preciso contar com uma administradora autorizada pelo Banco Central. Essa administradora formará grupos de pessoas que têm o mesmo interesse, seja em adquirir bens móveis, imóveis ou contratar serviços diversos.\n\nExiste uma extensa variedade de tipos de consórcio, sendo mais populares os: consórcio de carros, consórcio de motos e consórcios de imóveis — mas também há possibilidades de fazer um consórcio para contratar serviços, para pagar formaturas, viagens, cursos de graduação e pós-graduação, e até cirurgias plásticas.\n\nOu seja, há uma infinidade de oportunidades, basta ter um grupo de pessoas interessado.',
          ),
          const QuestionAnswerTile(
            question: 'Grupos: entenda como funcionam no consórcio',
            answer:
                'Com o grupo estabelecido, os integrantes se comprometem a pagar mensalmente uma parcela que, somada às outras, forma uma poupança conjunta.\n\nÉ importante lembrar que o valor da parcela é definido antes da assinatura do contrato, de forma que seja acessível ao cotista. Para a segurança do consorciado, existe um contrato de adesão, com todos os critérios da contratação.\n\nCom os recursos do grupo, é possível adquirir o bem de interesse coletivo. Com isso, um ou mais membros serão contemplados por meio de sorteio ou lances.\n\nEsse processo se repete, até que todos os membros do grupo sejam contemplados.\n\nÉ importante deixar claro que, mesmo depois de receber a carta de crédito para a aquisição, o consorciado contemplado deverá continuar pagando as mensalidades até o fim do contrato.\n\nÉ relevante dizer que existe uma garantia de recebimento do bem, já que o grupo não pode ser extinto até que o último participante seja contemplado e todas as parcelas tenham sido pagas.\n\nPodemos considerar que o consórcio consiste em um sistema de compra parcelada ou coletiva, em que cada integrante é responsável por pagar uma parcela mensal até ser contemplado.\n\nPara que esse sistema possa funcionar de forma regulamentada, é exigida a normatização do Bacen (Banco Central), que é autoridade que define os critérios de credenciamento das empresas que desejam ser administradoras de consórcios.\n\nVamos explicar agora quais são os papéis do BACEN e da administradora. Confira!',
          ),
          const QuestionAnswerTile(
            question: 'O papel do BACEN e da administradora de consórcio',
            answer:
                'O Banco Central (BACEN) desempenha um papel fundamental na regulação e fiscalização das atividades das administradoras de consórcio. Ele define as normas e critérios que as empresas devem seguir para operar nesse setor.\n\nA administradora de consórcio, por sua vez, é responsável por formar os grupos de consorciados, administrar as contribuições mensais, realizar os sorteios e lances, contemplar os participantes e emitir as cartas de crédito para a aquisição dos bens desejados.\n\nAmbos desempenham um papel importante para garantir a segurança e o bom funcionamento do consórcio.',
          ),
          const QuestionAnswerTile(
            question: 'Como funciona a carta de crédito no consórcio',
            answer:
                'A carta de crédito é um documento emitido pela administradora de consórcio que representa o valor do crédito a ser utilizado para a compra do bem desejado.\n\nApós ser contemplado, o consorciado pode utilizar a carta de crédito para adquirir o bem ou serviço correspondente. É importante ressaltar que a carta de crédito pode ser utilizada apenas dentro das regras estabelecidas no contrato de consórcio.\n\nO consorciado pode escolher o bem desejado dentro das opções definidas pela administradora, desde que esteja dentro do valor do crédito disponível na carta de crédito.',
          ),
          const QuestionAnswerTile(
            question: 'Quais são os tipos de consórcio?',
            answer:
                'Existem diversos tipos de consórcio disponíveis, abrangendo diferentes categorias de bens e serviços. Alguns exemplos comuns incluem consórcio de carros, consórcio de imóveis, consórcio de motos, consórcio de viagens, consórcio de serviços educacionais, consórcio de eletrodomésticos, entre outros. A escolha do tipo de consórcio dependerá dos interesses e necessidades individuais de cada pessoa.',
          ),
          const QuestionAnswerTile(
            question: 'Formas de ingressar em um grupo de consórcio',
            answer:
                'Existem diferentes formas de ingressar em um grupo de consórcio. Uma das formas mais comuns é entrar em contato com uma administradora de consórcio confiável e se informar sobre os grupos disponíveis. Você pode escolher um grupo que esteja de acordo com o bem ou serviço que deseja adquirir e fazer a adesão ao consórcio. Geralmente, é necessário realizar o pagamento de uma taxa de adesão e seguir as orientações da administradora para participar do grupo de consórcio escolhido.',
          ),
          const QuestionAnswerTile(
            question: 'Por que fazer um consórcio?',
            answer:
                'Fazer um consórcio pode ser vantajoso por diversas razões. Alguns dos principais motivos incluem a possibilidade de adquirir um bem ou serviço sem precisar pagar juros, a flexibilidade de prazos para pagamento, a chance de antecipar a contemplação por meio de sorteios ou lances, a segurança proporcionada pelo contrato de consórcio e a oportunidade de planejar a aquisição de um bem ou serviço de forma mais organizada. Além disso, o consórcio permite a participação em grupos de pessoas com interesses semelhantes, promovendo a interação e o compartilhamento de experiências.',
          ),
          const QuestionAnswerTile(
            question: 'Como escolher a melhor administradora de consórcio?',
            answer:
                'Para escolher a melhor administradora de consórcio, é importante considerar alguns critérios. Primeiramente, verifique se a administradora é autorizada pelo Banco Central do Brasil, o que garante a segurança e a legalidade das operações. Além disso, pesquise sobre a reputação da empresa, consultando a opinião de outros clientes e verificando se há reclamações registradas. Avalie também os serviços oferecidos, como flexibilidade de pagamento, variedade de opções de consórcio e qualidade do atendimento ao cliente. Por fim, leve em consideração a transparência nas informações prestadas e a facilidade de acesso aos contratos e regulamentos. Com base nesses critérios, você poderá escolher a administradora de consórcio que melhor atenda às suas necessidades e expectativas.',
          ),
          SizedBox(
            height: 100,
            width: 400,
            child: Image.asset(
                'assets/logo.png'), // Substitua pelo caminho da imagem do logo
          ),
          const SizedBox(height: 12),
          const Text(
            'Antonio Victor Pimentel Pires LTDA',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const Text(
            'CNPJ: 41.414.474/0001-67',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const Text(
            'Autorizado pelo Banco Central Nº 3/00/223/88',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.facebook),
                onPressed: () {
                  // Ação desejada para o Facebook
                },
              ),
            ],
          ),
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
    return ExpansionTile(
      title: Text(
        question,
        style: const TextStyle(
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(answer),
        ),
      ],
    );
  }
}
