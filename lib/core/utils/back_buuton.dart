import 'package:books_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key, required this.iconData});
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        iconData,
        size: 30,
        color: white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
