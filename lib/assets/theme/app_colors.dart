import 'package:flutter/material.dart';

abstract class IAppColors {
  Color get primaryColor;
  Color get secondaryColor;
  Color get backgroudColor;
  Color get russianViolet;
  Color get blueViolet;
  Color get opacityRussianViolet;
}

class AppColors implements IAppColors {
  @override
  Color get blueViolet => const Color.fromARGB(225, 255, 71, 121);
  @override
  Color get secondaryColor => Colors.amber;
  @override
  Color get backgroudColor => const Color.fromARGB(255, 255, 255, 232);
  @override
  Color get russianViolet => const Color.fromARGB(255, 50, 24, 75);
  @override
  Color get primaryColor => const Color.fromARGB(255, 136, 67, 228);
  @override
  Color get opacityRussianViolet => const Color.fromRGBO(50, 24, 75, 75);
}
