import 'package:flutter/material.dart';

import './dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/Meal-detail-screen';

  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    // final selectedMeal = DUMMY_MEALS.firstWhere(
    //   (meal) {
    //     return meal.id == mealId;
    //   },
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text('{selectedMeal.title'),
      ),
      body: Center(
        child: Text("Meal Detail Page!!!"),
      ),
    );
  }
}
