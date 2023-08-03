import 'package:flutter/material.dart';
import '../constants/app_icons.dart';

class CustomTabBar extends StatelessWidget {

  final double height;

  const CustomTabBar({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: AppIcons.home),
          IconButton(onPressed: () {}, icon: AppIcons.wallet),
          IconButton(onPressed: () {}, icon: AppIcons.chart),
          IconButton(onPressed: () {}, icon: AppIcons.account),
        ],
      ),
    );
  }
}