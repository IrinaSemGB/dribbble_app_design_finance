import 'package:dribbble_app_design_finance/screens/dashboard/dashboard_screen.dart';
import 'package:dribbble_app_design_finance/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FinanceApp());
}

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: DashboardScreen(),
    );
  }
}
