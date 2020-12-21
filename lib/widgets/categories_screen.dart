import 'package:flutter/material.dart';
import 'package:food/widgets/category_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meals App')),
      body: GridView(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          // this means that one colomn will take 200 pixles
          // and if we have for eg,450 width then 2 colomns of width 200 px are possible
          childAspectRatio: 3 / 2, // height is to width ratio (h/w)
          crossAxisSpacing: 20, // distance b/w two coloms
          mainAxisSpacing: 20, // distance b/w two rows
        ),
        children: DUMMY_CATEGORIES.map((catData) {
          return CategoryItem(
            catData.title,
            catData.color,
            catData.id,
          );
        }).toList(),
      ),
    );
  }
}
