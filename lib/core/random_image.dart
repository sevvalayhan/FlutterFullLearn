import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key});
  final String imageUrl = 'https://picsum.photos/200/300';
  final double height = 100;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: height,
      fit: BoxFit.cover,
    );
  }
}
