import 'package:books_app/core/utils/assets.dart';
import 'package:books_app/core/utils/widgets/back_buuton.dart';
import 'package:books_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Row(
        children: [
          Assets.logoImage,
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
              color: white,
            ),
          )
        ],
      ),
    );
  }
}

class CustomAppBarBookView extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarBookView({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const MyBackButton(
        iconData: FontAwesomeIcons.xmark,
      ),
      forceMaterialTransparency: true,
      title: const Icon(FontAwesomeIcons.cartShopping),
      titleSpacing: MediaQuery.of(context).size.width * .7,
    );
  }
}


