import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String title;
  final IconData customIcon;
  final String price;
  const CustomTile(
      {super.key,
      required this.title,
      required this.customIcon,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(customIcon),
      trailing: Text(price),
    );
  }
}
