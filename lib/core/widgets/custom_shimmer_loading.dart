import 'package:books_app/core/widgets/custom_loading_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_loading/shimmer_loading.dart';

class CustomShimmerLoading extends StatelessWidget {
  const CustomShimmerLoading({super.key, required this.imagRatio});
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