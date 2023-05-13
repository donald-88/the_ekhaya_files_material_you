import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
    required this.height,
    required this.colors,
    required this.text,
  });

  final double height;
  final List colors;
  final List text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.45,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Stack(children: [
          Positioned.fill(
            child: CarouselSlider(
              options: CarouselOptions(
                scrollDirection: Axis.vertical,
                aspectRatio: 1,
                viewportFraction: 1,
                autoPlay: true,
              ),
              items: colors.map((color) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      color: color,
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bar & Grill',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
                ],
              ))
        ]),
      ),
    );
  }
}
