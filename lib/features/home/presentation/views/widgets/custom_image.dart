import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key, required this.aspectRatio, required this.imgUrl});
  final String imgUrl;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
