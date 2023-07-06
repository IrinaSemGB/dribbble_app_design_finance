import 'package:flutter/cupertino.dart';
import '../../models/folder_model.dart';
import 'folder_dashboard_widget.dart';

class DashboardTable extends StatelessWidget {

  final double width;
  final List<Folder> folders;

  const DashboardTable({
    super.key,
    required this.width,
    required this.folders,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FolderDashboard(
                    width: width * 0.2,
                    folder: folders[0],
                  ),
                ),
                Expanded(
                  child: FolderDashboard(
                    width: width * 0.2,
                    folder: folders[1],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: FolderDashboard(
                      width: width * 0.2,
                      folder: folders[2],
                    )),
                Expanded(
                  child: FolderDashboard(
                    width: width * 0.2,
                    folder: folders[3],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}