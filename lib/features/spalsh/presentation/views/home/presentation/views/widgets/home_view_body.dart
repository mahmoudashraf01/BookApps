import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/best_seller_view.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const BooksListView(),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Best Seller',
            style: title1Bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const BestSellerListViewItem(),
      ],
    );
  }
}

