import 'package:flutter/material.dart';

class CategoriesMainWidgetBrand extends StatelessWidget {
  final String sampleLogo =
      "https://www.pngall.com/wp-content/uploads/2018/05/Disney-Logo-PNG-Pic.png";

  const CategoriesMainWidgetBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border.all(width: 1, color: (Colors.grey[500])!),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Center(
        child: Image.network(
          sampleLogo,
          errorBuilder:
              (BuildContext context, Object exception, StackTrace? stackTrace) {
            return const Text('Error');
          },
        ),
      ),
    );
  }
}
