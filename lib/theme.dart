import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color.fromRGBO(162, 29, 19, 1);
  static const primaryAccent = Color.fromRGBO(120, 14, 14, 1);
  static const secondaryColor = Color.fromRGBO(45, 45, 45, 1);
  static const secondaryAccent = Color.fromRGBO(35, 35, 35, 1);
  static const titleColor = Color.fromRGBO(200, 200, 200, 1);
  static const textColor = Color.fromRGBO(150, 150, 150, 1);
  static const succesColor = Color.fromRGBO(9, 149, 110, 1);
  static const higlightColor = Color.fromRGBO(212, 172, 13, 1);
}

ThemeData primaryTheme = ThemeData(

  // seed color
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
  ),

  // scaffold color
  scaffoldBackgroundColor: AppColors.secondaryAccent,

  // app bar theme colors 
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.secondaryColor,
    foregroundColor: AppColors.textColor,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),

  textTheme: TextTheme().copyWith(
   bodyMedium: TextStyle(
     color: AppColors.textColor,
     fontSize: 16,
     letterSpacing: 1,
   ),
  headlineMedium: TextStyle(
     color: AppColors.titleColor,
     fontSize: 16,
     fontWeight: FontWeight.bold,
     letterSpacing: 1,
   ),
   titleMedium: TextStyle(
     color: AppColors.titleColor,
     fontSize: 16,
     fontWeight: FontWeight.bold,
     letterSpacing: 2,
   )
  ),

  // card theme
  cardTheme: CardTheme(
    color: AppColors.secondaryColor.withOpacity(0.5),
    surfaceTintColor: Colors.transparent,
    shape: const RoundedRectangleBorder(),
    shadowColor: Colors.transparent,
    margin: const EdgeInsets.only(bottom: 10),
  ),

  // input decoration theme
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.secondaryColor.withOpacity(0.5),
    border: InputBorder.none,
    labelStyle: TextStyle( color: AppColors.textColor),
    prefixIconColor: AppColors.textColor,
    // border: OutlineInputBorder(
    //   borderSide: BorderSide.none,
    //   borderRadius: BorderRadius.circular(10),
    // ),
  ),

  // dialog theme
  dialogTheme: DialogTheme(
    backgroundColor: AppColors.secondaryColor,
    surfaceTintColor: Colors.transparent,
  ),
);
