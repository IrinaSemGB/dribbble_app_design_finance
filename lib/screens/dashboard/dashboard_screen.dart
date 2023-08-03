import 'package:dribbble_app_design_finance/constants/app_icons.dart';
import 'package:dribbble_app_design_finance/models/folder_model.dart';
import 'package:flutter/material.dart';
import '../../common_widgets/custom_app_bar.dart';
import '../../common_widgets/custom_tab_bar.dart';
import '../../constants/app_colors.dart';
import 'widgets/dashboard_header_widget.dart';
import 'widgets/dashboard_table_widget.dart';


class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    bool isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    final List<Folder> folders = [
      Folder(color: AppColors.yellow, title: 'Sales', icon: AppIcons.percent, currentValue: '230k'),
      Folder(color: AppColors.green, title: 'Customers', icon: AppIcons.customer, currentValue: '8.549k'),
      Folder(color: AppColors.red, title: 'Products', icon: AppIcons.products, currentValue: '1.423k'),
      Folder(color: AppColors.blue, title: 'Revenue', icon: AppIcons.revenue, currentValue: '\$9745'),
    ];

    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenSize.width * 0.04,
          vertical: screenSize.height * 0.03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CustomAppBar(size: screenSize),
                DashboardHeader(height: screenSize.height),
                SizedBox(height: screenSize.height * 0.04),
              ],
            ),
            Expanded(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 700),
                child: DashboardTable(
                  width: screenSize.width,
                  folders: folders,
                  visible: isKeyboard,
                ),
              ),
            ),
            SizedBox(height: screenSize.height * 0.03),
            AnimatedContainer(
              height: isKeyboard ? 0.0 : 60,
              duration: Duration(milliseconds: 500),
              child: CustomTabBar(height: screenSize.height),
            ),
          ],
        ),
      ),
    );
  }
}







