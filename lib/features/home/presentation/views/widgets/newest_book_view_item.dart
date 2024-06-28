import 'package:books_app/core/utils/app_routers.dart';
import 'package:books_app/core/utils/text.dart';
import 'package:books_app/features/home/data/Models/BookModel/book_model.dart';
import 'package:books_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListViewItem extends StatelessWidget {
  const NewestBooksListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
          extra: bookModel,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              CustomImage(
                aspectRatio: 2.6 / 4,
                imgUrl: bookModel.volumeInfo.imageLinks.thumbnail,
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
                        child: Text(
                          bookModel.volumeInfo.title!,
                          style: title1Bold,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: bodyBold,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: title1Bold,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Spacer(),
                        BookRating(
                          rating: bookModel.volumeInfo.averageRating ?? 0,
                          count: bookModel.volumeInfo.ratingsCount ?? 0,
                        ),
                      ],
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
