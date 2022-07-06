import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryMeal extends StatelessWidget {
  static const routeName = '/category-meal';
  const CategoryMeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final String categoryId = mealArgs['id'].toString();
    final String categoryTitle = mealArgs['title'].toString();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: Center(
          child: Text(categoryId),
        ));
  }
}
