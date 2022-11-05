import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Color? tileColor;
  final double height;
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final String data;

  const CustomListTile(
      {Key? key,
      this.tileColor,
      this.height = 36.0,
      this.leading,
      this.title,
      this.subtitle,
      this.trailing,
      required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white70,
      leading: const Icon(Icons.list),
      title: Text(
        data,
        style: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
