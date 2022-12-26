import 'package:flutter/material.dart';
import 'package:my_twitter_app/screens/home/widgets/appBarHome.dart';
import 'package:my_twitter_app/screens/home/widgets/drawer.dart';

import '../../widgets/customNavigationBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const DrawerList(),
        backgroundColor: const Color.fromARGB(156, 0, 0, 0),
        appBar: AppBarHome(scaffoldKey: scaffoldKey),
        body: const Center(child: Text("Hello Tweeter")),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 28, 155, 240),
          onPressed: () => print('coucou'),
          tooltip: 'tweetyTime',
          child: const Icon(
            Icons.add_outlined,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        bottomNavigationBar: const CustomNavBar());
  }
}
