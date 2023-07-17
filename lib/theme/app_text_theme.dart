import 'package:dribbble_app_design_finance/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._();

  static final TextTheme appTextTheme = TextTheme(

    //Hello David
    headlineLarge: GoogleFonts.montserrat(
      color: AppColors.white,
      fontSize: 32.0,
      fontWeight: FontWeight.w600,
    ),

    // Welcome back
    headlineMedium: GoogleFonts.montserrat(
      color: AppColors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),

    // 230k  8.549k 1.423k $9745
    titleLarge: GoogleFonts.montserrat(
      color: AppColors.black,
      fontWeight: FontWeight.w700,
      fontSize: 24.0,
      letterSpacing: -0.8,
    ),

    // Sales Customers Products Revenue
    bodyLarge: GoogleFonts.montserrat(
      color: AppColors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    ),

    // search keyword
    bodyMedium: GoogleFonts.montserrat(
      color: AppColors.white,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.5,
    ),
  );
}