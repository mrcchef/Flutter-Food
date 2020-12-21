import 'package:flutter/material.dart';

import './dummy_data.dart';
import './meal_item.dart';

class CategorieMealsScreen extends StatelessWidget {
  static const routeName = '/category-meal';
  // CategorieMealsScreen({this.categoryId, this.categoryTitle});

  Widget build(BuildContext context) {
    // final Map<String,String> valRoutes =
    //     ModalRoute.of(context).settings.arguments;
    // Both will work fine
    final valRoutes =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String categoryId = valRoutes['id'];
    final String categoryTitle = valRoutes['title'];
    final categoryMeals = DUMMY_MEALS.where(
      (meal) {
        return meal.categories.contains(categoryId);
      },
    ).toList();
    // categoryId = valRoutes['id'];
    // categoryTitle = valRoutes['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            duration: categoryMeals[index].duration,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
