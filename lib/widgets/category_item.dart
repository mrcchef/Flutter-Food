import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food/widgets/categories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  // intializing route name for the classes is a good practice to avoid errors
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.title, this.color, this.id);

  void _openMealScreen(BuildContext ctx, String id, String title) {
    // one way to navigate b/w pages is using using constructor
    // Navigator is a class which manages the different pages in the stack disciplines
    // hence it has push and pop method
    // MaterialPageRoute manages the transition from one page to another
    // Navigator.of(ctx).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategorieMealsScreen(
    //         categoryId: id,
    //         categoryTitle: title,
    //       );
    //     },
    //   ),
    // );

    Navigator.of(ctx).pushNamed(
      CategorieMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openMealScreen(context, id, title),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
