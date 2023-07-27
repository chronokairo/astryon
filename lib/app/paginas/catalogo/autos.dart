import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class AutosScreen extends StatelessWidget {
  List<Item> items = [
    Item(
      type: ItemType.motorcycle,
      brand: 'Honda',
      model: 'BIZ 110I',
      price: '599,00',
    ),
    Item(
      type: ItemType.motorcycle,
      brand: 'Honda',
      model: 'cb 300f twister cbs',
      price: '599,00',
    ),
    Item(
      type: ItemType.motorcycle,
      brand: 'Honda',
      model: 'cg 160 fan esdi',
      price: '599,00',
    ),
    Item(
      type: ItemType.motorcycle,
      brand: 'Honda',
      model: 'cg 160 start',
      price: '599,00',
    ),
    Item(
      type: ItemType.motorcycle,
      brand: 'Honda',
      model: 'cg 160 titan',
      price: '599,00',
    ),
    Item(
      type: ItemType.motorcycle,
      brand: 'Honda',
      model: 'POP 110I',
      price: '599,00',
    ),
  ];

  AutosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount;
    if (screenWidth >= 600) {
      // Se a largura da tela for maior ou igual a 600 (tela de computador), exibir 5 colunas
      crossAxisCount = 5;
    } else {
      // Caso contrário, (tela de telefone), exibir 2 colunas
      crossAxisCount = 2;
    }

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      padding: const EdgeInsets.all(8.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return AspectRatio(
          aspectRatio: 9 / 20, // Adjust the aspect ratio to your liking
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
                      getItemImage(items[index]),
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 80),
                        ElevatedButton(
                          onPressed: () {
                            launchWhatsApp();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x99000000),
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: Text(
                            'Parcelas a partir de: R\$${items[index].price.toString()}',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String getItemImage(Item item) {
    String typeString;
    switch (item.type) {
      case ItemType.car:
        typeString = 'cars';
        break;
      case ItemType.motorcycle:
        typeString = 'motorcycles';
        break;
      case ItemType.house:
        typeString = 'houses';
        break;
      default:
        typeString = 'unknown';
    }
    return 'assets/$typeString/${item.brand}/${item.model}.png';
  }

  IconData getItemIcon(ItemType type) {
    switch (type) {
      case ItemType.car:
        return Icons.directions_car;
      case ItemType.motorcycle:
        return Icons.motorcycle;
      case ItemType.house:
        return Icons.home;
      default:
        return Icons.error;
    }
  }
}

enum ItemType { car, motorcycle, house }

class Item {
  final ItemType type;
  final String brand;
  final String model;
  final String price;

  Item(
      {required this.type,
      required this.brand,
      required this.model,
      required this.price});
}

void launchWhatsApp() async {
  String phoneNumber = '+5592985080304'; // Número de telefone do destinatário
  String message = 'Olá, eu gostaria de saber mais!!'; // Mensagem a ser enviada
  String whatsappUrl =
      'https://wa.me/$phoneNumber?text=${Uri.encodeFull(message)}';

  // ignore: deprecated_member_use
  if (await canLaunch(whatsappUrl)) {
    // ignore: deprecated_member_use
    await launch(whatsappUrl);
  } else {
    throw 'Não foi possível abrir o WhatsApp.';
  }
}
