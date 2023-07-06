import 'package:dribbble_app_design_finance/constants/app_icons.dart';
import 'package:dribbble_app_design_finance/models/folder_model.dart';
import 'package:flutter/material.dart';
import '../../common_widgets/custom_app_bar.dart';
import '../../common_widgets/custom_tab_bar.dart';
import '../../constants/app_colors.dart';
import 'dashboard_header_widget.dart';
import 'dashboard_table_widget.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;
    
    final List<Folder> folders = [
      Folder(color: AppColors.yellow, title: 'Sales', icon: AppIcons.percent, currentValue: '230k'),
      Folder(color: AppColors.green, title: 'Customers', icon: AppIcons.customer, currentValue: '8.549k'),
      Folder(color: AppColors.red, title: 'Products', icon: AppIcons.products, currentValue: '1.423k'),
      Folder(color: AppColors.blue, title: 'Revenue', icon: AppIcons.revenue, currentValue: '\$9745'),
    ];

    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                CustomAppBar(height: screenSize.height),
                SizedBox(height: 20.0),
                DashboardHeader(height: screenSize.height),
                SizedBox(height: 10.0),
              ],
            ),
            Expanded(
              child: DashboardTable(width: screenSize.width, folders: folders),
            ),
            CustomTabBar(),
          ],
        ),
      ),
    );
  }
}







