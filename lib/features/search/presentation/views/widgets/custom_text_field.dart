import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: black.withOpacity(0.42),
        filled: true,
        enabledBorder: cutomOutlineInputBorder(),
        focusedBorder: cutomOutlineInputBorder(),
        hintText: 'Search For Books',
        hintStyle: title2Bold.copyWith(
          color: white.withOpacity(0.7),
        ),
        suffixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 24,
          color: white.withOpacity(0.3),
        ),
        prefixIcon: const Icon(
          FontAwesomeIcons.bookOpen,
        ),
      ),
    );
  }

  OutlineInputBorder cutomOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
    );
  }
}
