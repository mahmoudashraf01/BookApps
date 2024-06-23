import 'package:books_app/features/spalsh/presentation/views/search/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .03, vertical: 20),
      child: const Column(
        children: [
          CustomTextField(),
        ],
      ),
    );
  }
}


