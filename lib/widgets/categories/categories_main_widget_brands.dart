import 'package:demo/widgets/categories/categories_main_widget_brand.dart';
import 'package:flutter/material.dart';

class CategoriesMainWidgetBrands extends StatelessWidget {
  const CategoriesMainWidgetBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 1.7,
        mainAxisSpacing: 14,
        crossAxisSpacing: 14,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(9, (index) {
          return const CategoriesMainWidgetBrand();
        }),
      ),
    );
  }
}
