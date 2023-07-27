import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CatalogScreen extends StatelessWidget {
  List<Item> items = [
    Item(
      type: ItemType.car,
      brand: 'Toyota',
      model: 'Corolla',
      price: '60000',
    ),
  ];

  CatalogScreen({super.key});

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
                        Icon(
                          getItemIcon(items[index].type),
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          '${items[index].brand} - ${items[index].model}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Price: \$${items[index].price.toString()}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            // Adicione a ação desejada aqui
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFD8B45E),
                            minimumSize: const Size(double.infinity, 50),
                          ),
                          child: Text(
                            'R\$${items[index].price.toString()}',
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
