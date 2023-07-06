import 'package:dribbble_app_design_finance/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._();

  static final TextTheme appTextTheme = TextTheme(

    headlineLarge: GoogleFonts.montserrat(
      color: AppColors.white,
      fontSize: 32.0,
      fontWeight: FontWeight.w600,
    ),

    headlineMedium: GoogleFonts.montserrat(
      color: AppColors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    ),

    titleLarge: GoogleFonts.montserrat(
      color: AppColors.black,
      fontWeight: FontWeight.bold,
      fontSize: 22.0,
    ),


    bodyMedium: GoogleFonts.montserrat(
      color: AppColors.white,
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
    ),
  );
}