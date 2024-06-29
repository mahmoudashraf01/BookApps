import 'package:books_app/core/utils/colors.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_loading_imagef_books.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_loading/shimmer_loading.dart';

class NewesLoadingtBooksListViewItem extends StatelessWidget {
  const NewesLoadingtBooksListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              const CustomLoadingImage(
                aspectRatio: 2.6 / 4,
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadiusDirectional.circular(10),
                          ),
                          height: 7,
                          child: Text(
                            'Lorem ipsum dolor sit amet, ut labore et dolore magna aliqua',
                            style: title1Bold,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 5,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadiusDirectional.circular(10),
                      ),
                      child: Text(
                        'Lorem ipsum',
                        style: bodyBold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 5,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius:
                            BorderRadiusDirectional.circular(10),
                      ),
                      child: Text(
                        'Free',
                        style: title1Bold,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
