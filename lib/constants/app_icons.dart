import 'package:dribbble_app_design_finance/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppIcons {

  static Container main = Container(
    child: Image.asset('assets/icons/main_icon.png'),
    height: 30.0,
  );

  static Container slider = Container(
    child: Image.asset('assets/icons/slider_icon.png'),
    height: 27.0,
  );

  static Container search = Container(
    child: Image.asset('assets/icons/search_icon.png'),
    height: 21.0,
  );

  static Container percent = Container(
    child: Image.asset('assets/icons/percent_icon.png'),
    height: 28.0,
  );

  static Container customer = Container(
    child: Image.asset('assets/icons/customer_icon.png'),
    height: 25.0,
  );

  static Container products = Container(
    child: Image.asset('assets/icons/products_icon.png'),
    height: 23.0,
  );

  static Container revenue = Container(
    child: Image.asset('assets/icons/revenue_icon.png'),
    height: 26.0,
  );

  static Container home = Container(
    child: Image.asset('assets/icons/home_icon.png'),
    height: 25.0,
  );

  static Container wallet = Container(
    child: Image.asset('assets/icons/wallet_icon.png'),
    height: 22.0,
  );

  static Container chart = Container(
    child: Image.asset('assets/icons/chart_icon.png'),
    height: 23.0,
  );

  static Container account = Container(
    child: Image.asset('assets/icons/account_icon.png'),
    height: 25.0,
  );

  static const Icon down = Icon(
    Icons.expand_circle_down_outlined,
    color: AppColors.accent,
    size: 20.0,
  );

  static const Icon menu = Icon(
    Icons.more_vert,
    color: AppColors.yellow,
  );
}