import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:books_app/features/spalsh/presentation/views/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarBookView(),
      body: BookDetailsViewBody(),
    );
  }
}
