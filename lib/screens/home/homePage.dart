// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_twitter_app/screens/home/widgets/appBarHome.dart';
import 'package:my_twitter_app/screens/home/widgets/drawer.dart';

import '../../widgets/customNavigationBar.dart';
import '../../utils/templateColor.dart';

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
        backgroundColor: TemplateColor.dark,
        appBar: AppBarHome(scaffoldKey: scaffoldKey),
        body: const Center(child: Text("Hello Tweeter")),
        floatingActionButton: FloatingActionButton(
          backgroundColor: TemplateColor.twitter,
          onPressed: () => print('coucou'),
          tooltip: 'tweetyTime',
          child: Icon(
            Icons.add_outlined,
            color: TemplateColor.light,
          ),
        ),
        bottomNavigationBar: const CustomNavBar());
  }
}
