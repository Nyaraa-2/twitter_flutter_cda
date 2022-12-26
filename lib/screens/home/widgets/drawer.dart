import 'package:flutter/material.dart';
import 'package:my_twitter_app/screens/home/widgets/menuContent.dart';
import 'package:my_twitter_app/screens/profile/profile.dart';
import 'package:my_twitter_app/utils/templateColor.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .85,
      backgroundColor: TemplateColor.dark,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 60,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: TemplateColor.dark,
              ),
              child: Text(
                'menu',
                style: TextStyle(
                  color: TemplateColor.title,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          const MenuContent(
            leadingContent: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/67165182?v=4')),
            trailingContent: Icon(Icons.person_add_alt_outlined),
            route: ProfilePage(),
          ),
          const MenuContent(
            titleContent: 'Marina Vandenbosch',
            route: ProfilePage(),
            fontSizeContent: 18,
            subtitleContent: '@MarinaVANDENBO6',
          ),
          const MenuContent(
            titleContent: '203 Abonnement    77 Abonnés',
            route: ProfilePage(),
            fontSizeContent: 14,
          ),
          const MenuContent(
            leadingContent: Icon(Icons.person),
            titleContent: 'Profil',
            route: ProfilePage(),
            fontSizeContent: 18,
          ),
          const MenuContent(
            leadingContent: Icon(Icons.messenger_outline_rounded),
            titleContent: 'Sujets',
            route: ProfilePage(),
            fontSizeContent: 18,
          ),
          const MenuContent(
            leadingContent: Icon(Icons.bookmark_border),
            titleContent: 'Signets',
            route: ProfilePage(),
            fontSizeContent: 18,
          ),
          const MenuContent(
            leadingContent: Icon(Icons.library_books_outlined),
            titleContent: 'Liste',
            route: ProfilePage(),
            fontSizeContent: 18,
          ),
          const MenuContent(
            leadingContent: Icon(Icons.person_pin_circle_outlined),
            titleContent: 'Cercle Twitter',
            route: ProfilePage(),
            fontSizeContent: 18,
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            color: TemplateColor.divider,
          ),
          const SizedBox(
            height: 10,
          ),
          const MenuContent(
            titleContent: 'Creator Studio',
            route: ProfilePage(),
            fontSizeContent: 16,
            trailingContent: Icon(Icons.keyboard_arrow_down_sharp),
          ),
          const MenuContent(
            titleContent: 'Outils professionnels',
            route: ProfilePage(),
            fontSizeContent: 16,
            trailingContent: Icon(Icons.keyboard_arrow_down_sharp),
          ),
          const MenuContent(
            titleContent: 'Réglages et support',
            route: ProfilePage(),
            fontSizeContent: 16,
            trailingContent: Icon(Icons.keyboard_arrow_down_sharp),
          ),
        ],
      ),
    );
  }
}
