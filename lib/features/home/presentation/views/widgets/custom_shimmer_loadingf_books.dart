import 'package:books_app/features/home/presentation/views/widgets/custom_loading_imagef_books.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_loading/shimmer_loading.dart';

class CustomShimmerLoadingFbooks extends StatelessWidget {
  const CustomShimmerLoadingFbooks({super.key, required this.imagRatio});
  final double imagRatio;
  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: CustomLoadingImage(
                aspectRatio: imagRatio,
              ),
            );
          },
        ),
      ),
    );
  }
}


