import 'package:demo/widgets/categories/categories_left_widget_item.dart';
import 'package:flutter/material.dart';

class CategoriesLeftWidget extends StatefulWidget {
  const CategoriesLeftWidget({super.key});

  @override
  CategoriesLeftWidgetState createState() {
    return CategoriesLeftWidgetState();
  }
}

class CategoriesLeftWidgetState extends State<CategoriesLeftWidget> {
  String currentSelected = "Baby";
  List categories = ["Baby", "Toddler", "Kids", "Toys", "Maternity", "Gifts"];

  @override
  void initState() {
    super.initState();
  }

  void changeSelection(selected) {
    setState(() {
      currentSelected = selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var category in categories)
          GestureDetector(
            child: CategoriesLeftWidgetItem(
              title: category,
              isSelected: category == currentSelected,
            ),
            onTap: () {
              changeSelection(category);
            },
          ),
      ],
    );
  }
}
