// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_twitter_app/utils/templateColor.dart';

class MenuContent extends StatelessWidget {
  const MenuContent({
    super.key,
    required this.route,
    this.titleContent,
    this.fontSizeContent,
    this.subtitleContent,
    this.leadingContent,
    this.trailingContent,
    this.navigation,
  });
  final Widget? leadingContent;
  final String? titleContent;
  final double? fontSizeContent;
  final String? subtitleContent;
  final Widget? trailingContent;
  final Widget route;
  final void navigation;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingContent,
      title: titleContent != null
          ? Text(
              titleContent!,
              style: TextStyle(
                color: TemplateColor.title,
                fontSize: fontSizeContent,
              ),
            )
          : null,
      subtitle: subtitleContent != null
          ? Text(subtitleContent!,
              style: TextStyle(color: TemplateColor.subtitle))
          : null,
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => route,
          )),
      trailing: trailingContent,
    );
  }
}
