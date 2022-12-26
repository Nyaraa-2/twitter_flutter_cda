// ignore_for_file: file_names

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../../utils/templateColor.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
        backgroundColor: TemplateColor.dark,
        items: [
          CustomNavigationBarItem(
            icon: const Icon(Icons.home_rounded),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.search),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.notifications_none_rounded),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.message),
          ),
        ],
        selectedColor: TemplateColor.twitter);
  }
}
