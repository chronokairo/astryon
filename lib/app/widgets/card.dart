import 'package:flutter/material.dart';

import '../paginas/sobreconsorcio/consorciocarro.dart';
import '../paginas/sobreconsorcio/consorciocasa.dart';
import '../paginas/sobreconsorcio/consorciopesado.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback? onTap;

  const CustomCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.buttonText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: onTap,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0x99000000),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: Text(buttonText),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCardPage extends StatelessWidget {
  const CustomCardPage({Key? key}) : super(key: key);

  Widget buildCard({
    required String imagePath,
    required String title,
    required String description,
    required String buttonText,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      height: 250,
      child: CustomCard(
        imagePath: imagePath,
        title: title,
        description: description,
        buttonText: buttonText,
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // Wrap with Center to center the cards vertically
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Determine the current width
          double width = constraints.maxWidth;

          // Define a breakpoint for switching from row to column layout
          double breakpointWidth = 600;

          // Decide whether to show the cards in a row or a column
          bool isRowLayout = width > breakpointWidth;

          // Return the appropriate layout based on the decision
          if (isRowLayout) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: buildCard(
                    imagePath: "assets/banner/casa.png",
                    title:
                        'Casa, apartamento e quitação de financiamento em até 200 meses.',
                    description: 'Descrição do card 1...',
                    buttonText: 'Veja as vantagens',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConsorcioCasaPage(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: buildCard(
                    imagePath: "assets/banner/autos.png",
                    title:
                        'Carros, motos e náuticos com pagamento em até 70 meses.',
                    description: 'Descrição do card 2...',
                    buttonText: 'Conheça',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConsorcioCarroPage(),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: buildCard(
                    imagePath: "assets/banner/pesado.png",
                    title:
                        'Caminhões, ônibus, tratores com pagamento em até 150 meses.',
                    description: 'Descrição do card 3...',
                    buttonText: 'Saiba mais',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ConsorcioCaminhaoPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          } else {
            return ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 16),
              children: [
                buildCard(
                  imagePath: "assets/banner/casa.png",
                  title:
                      'Casa, apartamento e quitação de financiamento em até 200 meses.',
                  description: 'Descrição do card 1...',
                  buttonText: 'Veja as vantagens',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConsorcioCasaPage(),
                      ),
                    );
                  },
                ),
                buildCard(
                  imagePath: "assets/banner/autos.png",
                  title:
                      'Carros, motos e náuticos com pagamento em até 70 meses.',
                  description: 'Descrição do card 2...',
                  buttonText: 'Conheça',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConsorcioCarroPage(),
                      ),
                    );
                  },
                ),
                buildCard(
                  imagePath: "assets/banner/pesado.png",
                  title:
                      'Caminhões, ônibus, tratores com pagamento em até 150 meses.',
                  description: 'Descrição do card 3...',
                  buttonText: 'Saiba mais',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConsorcioCaminhaoPage(),
                      ),
                    );
                  },
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
