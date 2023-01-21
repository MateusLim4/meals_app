import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

abstract class IFontStyles {
  TextStyle get title;
  TextStyle get raleWayBold;
  TextStyle get robotoCondensedBold;
  TextStyle get robotoCondensedRegular;
  TextStyle get robotoCondensedThin;
  TextStyle get robotoCondensedItalic;
  TextStyle get mealTitle;
}

class FontStyles implements IFontStyles {
  @override
  TextStyle get title => GoogleFonts.raleway(
        fontWeight: FontWeight.w900,
      );

  @override
  TextStyle get raleWayBold => GoogleFonts.raleway(
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get robotoCondensedBold =>
      GoogleFonts.robotoCondensed(fontWeight: FontWeight.bold, fontSize: 20);

  @override
  TextStyle get robotoCondensedRegular => GoogleFonts.robotoCondensed(
        fontWeight: FontWeight.normal,
      );

  @override
  TextStyle get robotoCondensedThin => GoogleFonts.robotoCondensed(
        fontWeight: FontWeight.w300,
      );

  @override
  TextStyle get robotoCondensedItalic => GoogleFonts.robotoCondensed(
        fontStyle: FontStyle.italic,
      );

  @override
  TextStyle get mealTitle => GoogleFonts.robotoCondensed(
        fontSize: 26,
        color: Colors.white,
      );
}
