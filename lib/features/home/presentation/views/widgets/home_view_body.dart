import 'package:books_app/core/utils/text.dart';
import 'package:books_app/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:books_app/features/home/presentation/views/widgets/list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeaturedBooksListView(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Newest Books',
                  style: title1Bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .0009,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: NewestBooksListView(),
        ),
      ],
    );
  }
}
