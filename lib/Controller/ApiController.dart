import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:trogan_assesment/Model/coursemode.dart';

import '../Model/categories_model.dart';

Future<List<CourseModel>> getData() async {
  String uri = "https://futursity.com/course/api/top_courses";

  final response = await http.get(Uri.parse(uri));

  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    return courseModelFromJson(response.body);
  } else {
    throw Exception;
  }
}
Future<List<CategoriesModel>> getCategoriesData() async {
  String uri = "https://futursity.com/course/api/categories";

  final response = await http.get(Uri.parse(uri));

  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    return CategoriesModelFromJson(response.body);
  } else {
    throw Exception;
  }
}
