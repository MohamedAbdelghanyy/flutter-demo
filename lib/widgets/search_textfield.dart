import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  @override
  SearchTextFieldState createState() {
    return SearchTextFieldState();
  }
}

class SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'What are you looking for?',
        contentPadding: EdgeInsets.zero,
        prefixIcon: IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.blue,
          ),
          onPressed: () {
            // Search
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
