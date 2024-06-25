import 'package:books_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   leading: const MyBackButton(iconData: FontAwesomeIcons.arrowLeft),
      //   forceMaterialTransparency: true,
      // ),
      body: SafeArea(child: SearchViewBody()),
    );
  }
}

