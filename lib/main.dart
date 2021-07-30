import 'package:flutter/material.dart';
import 'package:shop_app/meal_details.dart';
import './meal_details.dart';
import './catigories_screen.dart';
import 'models/category_meals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SarMeals',
        theme: ThemeData(
            primarySwatch: Colors.pink,
            accentColor: Colors.amber,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline6: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                ))),
        home: CategoriesScreen(),
        routes: {
          CategoryMealsScreen.routName: (ctx) => CategoryMealsScreen(),
          MealDetailScreen.routName: (ctx) => MealDetailScreen()
        });
  }
}
