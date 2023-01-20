import 'package:flutter/material.dart';

abstract class IAppColors {
  Color get primaryColor;
  Color get secondaryColor;
  Color get backgroudColor;
}

class AppColors implements IAppColors {
  @override
  Color get primaryColor => Colors.pink;
  @override
  Color get secondaryColor => Colors.amber;
  @override
  Color get backgroudColor => const Color.fromRGBO(225, 254, 229, 1);
}
