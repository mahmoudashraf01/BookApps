import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
      {super.key, required this.aspectRatio, required this.imgUrl});
  final String imgUrl;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => const SizedBox(
            width: 20,
            height: 20,
            child: Center(
              child: CustomLoadingIndicator(),
            ),
          ),
          errorWidget: (context, url, error) =>
              const Icon(FontAwesomeIcons.triangleExclamation),
        ),
      ),
    );
  }
}
