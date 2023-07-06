import 'package:flutter/material.dart';
import '../constants/app_icons.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
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