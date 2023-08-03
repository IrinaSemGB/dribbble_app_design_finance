import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_icons.dart';
import '../constants/app_images.dart';

class CustomAppBar extends StatelessWidget {

  final Size size;
  CustomAppBar({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * 0.07,
            height: size.width * 0.07,
            child: AppIcons.main,
          ),
          Container(
            height: size.width * 0.12,
            child: Padding(
              padding: EdgeInsets.all(6.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(size.width * 0.12 / 5),
                child: Image.asset(AppImages.profile),
              ),
            ),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: AppColors.white,
              ),
              borderRadius: BorderRadius.circular(size.width * 0.12 / 4),
            ),
          ),
        ],
      ),
    );
  }
}