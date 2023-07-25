import 'package:flutter/material.dart';

import '../paginas/sobreconsorcio/consorciocarro.dart';
import '../paginas/sobreconsorcio/consorciocasa.dart';
import '../paginas/sobreconsorcio/consorciopesado.dart';

class CustomCard extends StatelessWidget {
  final String imagePath;
  final IconData icon;
  final IconData? secondIcon; // Add the secondIcon property
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback? onTap;

  const CustomCard({super.key, 
    required this.imagePath,
    required this.icon,
    required this.title,
    required this.description,
    required this.buttonText,
    this.onTap,
    this.secondIcon, // Add the secondIcon to the constructor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 268.333,
      child: Align(
        alignment: Alignment.center,
        child: GestureDetector(
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              icon,
                              color: Colors.white,
                              size: 80,
                            ),
                            if (secondIcon != null)
                              Icon(
                                secondIcon,
                                color: Colors.white,
                                size: 80,
                              ),
                          ],
                        ),
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
        ),
      ),
    );
  }
}


class CustomCardPage extends StatelessWidget {
  const CustomCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Wrap with Center to center the cards vertically
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 700,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Expanded(
                  // Use Expanded to make the card fill the available width
                  child: CustomCard(
                    imagePath: "assets/banner/casa.png",
                    icon: Icons.home,
                    title:
                        'Casa, apartamento e quitação de financiamento em até 200 meses. Crédito de R\$ 50 mil a R\$ 500 mil.',
                    description: 'Descrição do card 1...',
                    buttonText: 'Veja as vantagens',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConsorcioCasaPage()),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    imagePath: "assets/banner/autos.png",
                    icon: Icons.motorcycle,
                    secondIcon: Icons.directions_car,
                    title:
                        'Carros, motos e náuticos com pagamento em até 70 meses. Crédito de R\$ 25 mil a R\$ 70 mil.',
                    description: 'Descrição do card 2...',
                    buttonText: 'Conheça',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConsorcioCarroPage()),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    imagePath: "assets/banner/pesado.png",
                    icon: Icons.local_shipping,
                    title:
                        'Caminhões, ônibus, tratores com pagamento em até 150 meses. Crédito de R\$ 180 mil a R\$ 300 mil.',
                    description: 'Descrição do card 3...',
                    buttonText: 'Saiba mais',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ConsorcioCaminhaoPage()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
