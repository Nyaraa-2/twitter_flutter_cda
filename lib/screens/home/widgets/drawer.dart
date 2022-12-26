import 'package:flutter/material.dart';
import 'package:my_twitter_app/main.dart';
import 'package:my_twitter_app/screens/home/homePage.dart';
import 'package:my_twitter_app/screens/profile/profile.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * .85,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 60,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              child: Text(
                'menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/67165182?v=4')),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ));
            },
            trailing: const Icon(Icons.person_add_alt_outlined),
          ),
          const SizedBox(
            height: 10,
          ),
          const ListTile(
            title: Text(
              'Marina Vandenbosch',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            subtitle: Text('@MarinaVANDENBO6',
                style: TextStyle(color: Color.fromARGB(255, 136, 136, 136))),
          ),
          const ListTile(
            title: Text(
              '203 Abonnement    77 Abonnés',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'Profil',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.messenger_outline_rounded),
            title: const Text('Sujets',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark_border),
            title: const Text('Signets',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_books_outlined),
            title: const Text('Liste',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_pin_circle_outlined),
            title: const Text('Cercle Twitter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.white30,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text('Creator Studio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            trailing: const Icon(Icons.keyboard_arrow_down_sharp),
          ),
          ListTile(
            title: const Text('Outils professionnels',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            trailing: const Icon(Icons.keyboard_arrow_down_sharp),
          ),
          ListTile(
            title: const Text('Réglages et support',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            trailing: const Icon(Icons.keyboard_arrow_down_sharp),
          ),
        ],
      ),
    );
  }
}
