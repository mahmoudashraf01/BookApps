import 'package:books_app/core/Models/BookModel/book_model.dart';
import 'package:books_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit_cubit.dart';
import 'package:books_app/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimillarBooks(
      category: widget.bookModel.volumeInfo.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarBookView(),
      body: BookDetailsViewBody(
        book: widget.bookModel,
      ),
    );
  }
}
