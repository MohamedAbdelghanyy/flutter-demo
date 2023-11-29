import 'package:demo/widgets/categories/categories_main_widget_category.dart';
import 'package:flutter/material.dart';

class CategoriesMainWidgetCategories extends StatelessWidget {
  const CategoriesMainWidgetCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 2.2,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(12, (index) {
              return CategoriesMainWidgetCategory(title: 'Category $index');
            }),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 14),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 2.2,
            mainAxisSpacing: 14,
            crossAxisSpacing: 14,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) {
              return CategoriesMainWidgetCategory(title: 'Colored $index');
            }),
          ),
        ),
      ],
    );
  }
}
