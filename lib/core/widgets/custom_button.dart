import 'package:books_app/core/utils/text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.txtColor,
    this.borderRadius, required this.buttonText,
  });

  final Color bgColor;
  final Color txtColor;
  final String buttonText;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: Text(
          buttonText,
          style: title1Bold.copyWith(
            color: txtColor,
          ),
        ),
      ),
    );
  }
}
