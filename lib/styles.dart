import 'package:flutter/material.dart';

mixin AppColors {
  static const Blue = Color(0xFF036082);
  static const lightBlue = Color(0xFF239ECA);
}

mixin TextStyles {
  static TextStyle title = const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    color: AppColors.Blue,
  );

  static TextStyle body = const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
    color: AppColors.Blue,
  );
}