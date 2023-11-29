import 'package:demo/widgets/categories/categories_left_widget.dart';
import 'package:demo/widgets/categories/categories_main_widget.dart';
import 'package:demo/widgets/main_layout.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  CategoriesScreenState createState() {
    return CategoriesScreenState();
  }
}

class CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
        child: Row(
      children: const [
        Expanded(
          flex: 1,
          child: CategoriesLeftWidget(),
        ),
        Expanded(
          flex: 3,
          child: CategoriesMainWidget(),
        )
      ],
    ));
  }
}
