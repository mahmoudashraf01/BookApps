import 'package:books_app/core/utils/app_routers.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:shimmer_loading/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: state.books[index],
                      );
                    },
                    child: CustomImage(
                      aspectRatio: 2.5 / 4,
                      imgUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomShimmerLoading(
            imagRatio: 2.5 / 4,
          );
        }
      },
    );
  }
}

// Custom Shimmer Loading Indicator
//

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

class CustomLoadingImage extends StatelessWidget {
  const CustomLoadingImage({
    super.key,
    required this.aspectRatio,
  });
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Image.asset(
          'assets/images/LOTR.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
