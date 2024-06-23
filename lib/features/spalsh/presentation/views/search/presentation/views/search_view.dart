import 'package:books_app/core/utils/widgets/back_buuton.dart';
import 'package:books_app/features/spalsh/presentation/views/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      // appBar: AppBar(
      //   leading: const MyBackButton(iconData: FontAwesomeIcons.arrowLeft),
      //   forceMaterialTransparency: true,
      // ),
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
