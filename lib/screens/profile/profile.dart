import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(156, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(156, 0, 0, 0),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(
                onPressed: () => print('coucou'),
                icon: const Icon(Icons.unsubscribe)),
          ],
        ),
        body: const Center(
          child: Text('Profile page'),
        ));
  }
}
