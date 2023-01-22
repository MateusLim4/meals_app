import 'package:flutter/material.dart';
import 'package:meals_app/assets/theme/app_theme.dart';
import 'package:meals_app/widgets/meal_item.dart';
import '../models/category.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {
  const CategoriesMealsScreen({Key? key, required this.meals})
      : super(key: key);

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(
            category.title,
            style: AppTheme.fontStyles.raleWayBold,
          ),
          backgroundColor: AppTheme.colors.primaryColor,
        ),
        body: Center(
          child: ListView.builder(
              itemCount: categoryMeals.length,
              itemBuilder: (ctx, index) {
                return MealItem(meal: categoryMeals[index]);
              }),
        ));
  }
}
