import 'package:flutter/material.dart';
import 'package:meals_app/routes/app_routes.dart';

import '../assets/theme/app_theme.dart';
import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  const MealItem({super.key, required this.meal});

  void _selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.mealDetail,
      arguments: meal,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(meal.imageUrl,
                    height: 250, width: double.infinity, fit: BoxFit.cover),
              ),
              Positioned(
                right: 10,
                bottom: 20,
                child: Container(
                  width: 300,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  color: AppTheme.colors.opacityRussianViolet,
                  child: Text(
                    meal.title,
                    style: AppTheme.fontStyles.mealTitle,
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(Icons.schedule),
                    const SizedBox(
                      width: 6,
                    ),
                    Text('${meal.duration} min')
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.work),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(meal.complexityText)
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.attach_money),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(meal.costText)
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
