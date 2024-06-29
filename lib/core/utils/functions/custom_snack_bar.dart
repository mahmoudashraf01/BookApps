import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:flutter/material.dart';

void customSnackBar({required BuildContext context, required String txt}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        txt,
        style: title1Bold,
      ),
      backgroundColor: black,
      duration: const Duration(seconds: 3),
      
    ),
  );
}
