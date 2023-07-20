import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:priorizza/app/paginas/consorcios/carros.dart';
import 'package:priorizza/app/paginas/consorcios/motos.dart';

class CarouselSliderWidget extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/banner/autos.png',
    'assets/banner/bike.png',
    'assets/banner/casa.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imagePaths.length,
      itemBuilder: (context, index, realIndex) {
        return GestureDetector(
          onTap: () {
            _navigateToCorrespondingClass(context, index);
          },
          child: Image.asset(
            imagePaths[index],
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 23 / 9,
        enlargeCenterPage: true,
      ),
    );
  }

  void _navigateToCorrespondingClass(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const Bike()), // Substitua "Classe1" pela classe correspondente
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const Autos()), // Substitua "Classe2" pela classe correspondente
        );
        break;
      // Adicione outros cases conforme o número de imagens e classes correspondentes
      default:
        break;
    }
  }
}
