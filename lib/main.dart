import 'package:flutter/material.dart';
import './widgets/categories_meals_screen.dart';
import './widgets/categories_screen.dart';
import './widgets/category_item.dart';
import './widgets/Meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1), //rgb(255,192,207)
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: CategoriesScreen(),
      // initialRoute: '/',
      routes: {
        // instead of home argument we can also add homescreen through routes as shown below
        '/': (ctx) => CategoriesScreen(),
        CategorieMealsScreen.routeName: (ctx) => CategorieMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      // This is the route which returns a route which is invoked
      // when there is a named route called but it is not registered in the main
      // onGenerateRoute: (settings) => {
      //   print(settings.name);
      //   return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
      // },
      // onUnknownRoute: ,
    );
  }
}
