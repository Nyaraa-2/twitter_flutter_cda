import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
      backgroundColor: const Color.fromARGB(156, 0, 0, 0),
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
      selectedColor: const Color.fromARGB(255, 28, 155, 240),
    );
  }
}
