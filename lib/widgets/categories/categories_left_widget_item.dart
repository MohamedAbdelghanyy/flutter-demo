import 'package:flutter/material.dart';

class CategoriesLeftWidgetItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  const CategoriesLeftWidgetItem(
      {super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 60,
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.grey[50],
        border: Border(
          bottom: BorderSide(
            color: (Colors.grey[200])!,
            width: 1.5,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: isSelected ? 3 : 0,
            height: 60,
            color: Colors.green[200],
            margin: const EdgeInsets.only(right: 10),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
