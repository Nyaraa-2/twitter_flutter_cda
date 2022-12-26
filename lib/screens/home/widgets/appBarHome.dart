// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_twitter_app/utils/templateColor.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  const AppBarHome({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: TemplateColor.dark,
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/67165182?v=4'))),
      title: IconButton(
          onPressed: () => print(""),
          icon: FaIcon(
            FontAwesomeIcons.twitter,
            color: TemplateColor.twitter,
          )),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () => print('coucou'),
            icon: const FaIcon(FontAwesomeIcons.star)),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
