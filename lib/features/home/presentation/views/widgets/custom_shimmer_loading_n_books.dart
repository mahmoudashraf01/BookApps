import 'package:books_app/features/home/presentation/views/widgets/newest_shimmer_loadingt_books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_loading/shimmer_loading.dart';

class CustomShimmerLoadingNbooks extends StatelessWidget {
  const CustomShimmerLoadingNbooks({super.key, required this.imagRatio});
  final double imagRatio;
  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: NewesLoadingtBooksListViewItem(),
          );
        },
      ),
    );
  }
}
