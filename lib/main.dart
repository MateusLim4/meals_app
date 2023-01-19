import "package:flutter/material.dart";
import 'package:meals_app/screens/categories_screen.dart';

void main() {
  runApp(const MealsApp());
}

class MealsApp extends StatelessWidget {
  const MealsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vamos Cozinhar?",
      theme: ThemeData(primaryColor: Colors.blue),
      home: const CategoriesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
