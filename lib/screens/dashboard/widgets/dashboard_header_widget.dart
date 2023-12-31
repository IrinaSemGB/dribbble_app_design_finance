import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../constants/app_titles.dart';

class DashboardHeader extends StatelessWidget {

  final double height;
  const DashboardHeader({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppTitles.greetingTitle,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: height * 0.042),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    AppTitles.greetingSubtitle,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: height * 0.022)
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: AppIcons.slider
              ),
            ],
          ),
          // SizedBox(),
          TextField(
            style: Theme.of(context).textTheme.bodyMedium,
            cursorColor: AppColors.accent,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.grey,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(
                  color: AppColors.black,
                ),
              ),
              hintText: AppTitles.search,
              hintStyle: Theme.of(context).textTheme.bodyMedium,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(top: height * 0.018, bottom: height * 0.018, right: 25.0),
                child: AppIcons.search,
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
            ),
          ),
        ],
      ),
    );
  }
}