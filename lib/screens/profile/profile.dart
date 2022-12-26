import 'package:flutter/material.dart';
import 'package:my_twitter_app/utils/templateColor.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: TemplateColor.dark,
        appBar: AppBar(
          backgroundColor: TemplateColor.dark,
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
