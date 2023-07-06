import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_icons.dart';
import '../constants/app_images.dart';

class CustomAppBar extends StatelessWidget {

  final double height;
  CustomAppBar({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () { }, icon: AppIcons.main),
          Container(
            height: 55.0,
            child: Padding(
              padding: EdgeInsets.all(6.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(AppImages.profile),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: AppColors.white,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ],
      ),
    );
  }
}