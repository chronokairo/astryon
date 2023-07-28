import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../paginas/catalogo/autos.dart';

class CarouselSliderWidget extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/banner/1.png',
    'assets/banner/2.png',
    'assets/banner/3.png',
  ];

  CarouselSliderWidget({super.key});

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
        aspectRatio: 16 / 7,
        enlargeCenterPage: true,
      ),
    );
  }

  void _navigateToCorrespondingClass(BuildContext context, int index) {
    switch (index) {
      case 0:
        launchWhatsApp();
        break;
      case 1:
        launchWhatsApp();

        break;
      case 2:
        launchWhatsApp();

        break;
      // Adicione outros cases conforme o número de imagens e classes correspondentes
      default:
        break;
    }
  }
}
