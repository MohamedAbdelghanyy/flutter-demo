import 'package:flutter/material.dart';

class CategoriesMainWidgetCategory extends StatelessWidget {
  final String title;
  late final Color backgroundColor;
  late final Color textColor;
  CategoriesMainWidgetCategory({super.key, required this.title}) {
    backgroundColor = (!title.contains("Colored")
        ? Colors.white
        : title.contains("0")
            ? Colors.red
            : title.contains("1")
                ? Colors.black
                : Colors.amber[300])!;
    textColor = backgroundColor == Colors.black ? Colors.white : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(width: 1, color: (Colors.grey[300])!),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Center(
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
              fontSize: 11, fontWeight: FontWeight.bold, color: textColor),
        ),
      ),
    );
  }
}
