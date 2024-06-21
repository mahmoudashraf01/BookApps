import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        // CustomImage(),
        BooksListView(),
      ],
    );
  }
}

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: CustomImage(),
            );
          }),
    );
  }
}
