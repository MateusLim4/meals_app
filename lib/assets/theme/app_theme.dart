import 'package:meals_app/assets/theme/app_colors.dart';
import 'package:meals_app/assets/theme/font_style.dart';

class AppTheme {
  static AppTheme instance = AppTheme();

  final _colors = AppColors();
  static get colors => instance._colors;

  final _fontStyles = FontStyles();
  static get fontStyles => instance._fontStyles;
}
