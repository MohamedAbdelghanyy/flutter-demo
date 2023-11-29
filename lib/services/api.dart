import 'dart:convert';

import 'package:demo/models/photo.dart';
import 'package:http/http.dart' as http;

class API {
  static const baseUrl = "https://jsonplaceholder.typicode.com/photos/";

  static Future<Photo> fetchPhoto(photoId) async {
    final response = await http.get(Uri.parse("$baseUrl/$photoId"));
    if (response.statusCode == 200) {
      return Photo.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
    } else {
      // Log Error and Throw Exception
      throw Exception('Error');
    }
  }
}
