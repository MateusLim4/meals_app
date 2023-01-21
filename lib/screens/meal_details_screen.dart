import 'package:flutter/material.dart';
import 'package:meals_app/assets/theme/app_theme.dart';

import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title, style: AppTheme.fontStyles.title),
        backgroundColor: AppTheme.colors.primaryColor,
      ),
      body: const Center(
        child: Text(
          "Detalhes da refeição",
        ),
      ),
    );
  }
}
