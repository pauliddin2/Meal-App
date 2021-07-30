import 'package:flutter/material.dart';
import 'package:shop_app/meal_item.dart';
import './dummy_categories.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routName = '/category-meal';

  // final String categoryId;
  // final String categoryTitlefor;

  // CategoryMealsScreen(this.categoryId, this.categoryTitlefor);

  @override
  Widget build(BuildContext context) {
    final routArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routArgs['title'];
    final categoryId = routArgs['id'];
    final categoryMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                id: categoryMeal[index].id,
                affordability: categoryMeal[index].affordabilty,
                complexity: categoryMeal[index].complexity,
                duration: categoryMeal[index].duration,
                imageUrl: categoryMeal[index].imageUrl,
                title: categoryMeal[index].title);
          },
          itemCount: categoryMeal.length,
        ));
  }
}
