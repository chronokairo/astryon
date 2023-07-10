import 'package:flutter/material.dart';

class ConsorcioPage extends StatelessWidget {
  const ConsorcioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/wallpaper.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const Positioned(
                    top: 3,
                    child: Text(
                      '50%',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Meu Consórcio',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildInfoItem('Grupo', '1234'),
                  _buildInfoItem('Cota', '567'),
                  _buildInfoItem('Sequência', '0'),
                ],
              ),
              const SizedBox(height: 20),
              _buildCard('Card 1'),
              const SizedBox(height: 10),
              _buildCard('Card 2'),
              const SizedBox(height: 10),
              _buildCard('Card 3'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BoletosPage()),
              );
            },
            child: const Text(
              'Expandir',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoItem(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildCard(String title) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: const Text('Descrição do card'),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          // Ação desejada ao clicar no card
        },
      ),
    );
  }
}

class BoletosPage extends StatelessWidget {
  const BoletosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boletos'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'Boletos Pagos',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          BoletosList(pagos: true),
          SizedBox(height: 20),
          Text(
            'Boletos a Pagar',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          BoletosList(pagos: false),
        ],
      ),
    );
  }
}

class BoletosList extends StatelessWidget {
  final bool pagos;

  const BoletosList({required this.pagos, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Simulando a lista de boletos pagos ou a pagar
    final boletos = [
      'Boleto 1',
      'Boleto 2',
      'Boleto 3',
      'Boleto 4',
      'Boleto 5',
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: boletos.length,
      itemBuilder: (context, index) {
        final boleto = boletos[index];
        return ListTile(
          title: Text(boleto),
          subtitle: Text(pagos ? 'Pago' : 'A pagar'),
          trailing: Icon(pagos ? Icons.check_circle : Icons.pending),
        );
      },
    );
  }
}
