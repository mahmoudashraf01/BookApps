import 'package:flutter/material.dart';

class CustomLoadingImage extends StatelessWidget {
  const CustomLoadingImage({
    super.key,
    required this.aspectRatio,
  });
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Image.asset(
          'assets/images/LOTR.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
