import 'package:demo/widgets/categories/categories_main_widget_brands.dart';
import 'package:demo/widgets/categories/categories_main_widget_categories.dart';
import 'package:flutter/material.dart';

class CategoriesMainWidget extends StatefulWidget {
  const CategoriesMainWidget({super.key});

  @override
  CategoriesMainWidgetState createState() {
    return CategoriesMainWidgetState();
  }
}

class CategoriesMainWidgetState extends State<CategoriesMainWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Image.network(
              "https://www.adspeed.com/placeholder-300x200.gif",
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return const Text('Error');
              },
            ),
          ),
          const CategoriesMainWidgetCategories(),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Image.network(
              "https://www.adspeed.com/placeholder-300x150.gif",
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return const Text('Error');
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Featured Brands',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          const CategoriesMainWidgetBrands(),
        ],
      ),
    );
  }
}
