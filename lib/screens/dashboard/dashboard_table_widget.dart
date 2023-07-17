import 'package:flutter/cupertino.dart';
import '../../models/folder_model.dart';
import 'folder_dashboard_widget.dart';

class DashboardTable extends StatelessWidget {

  final double width;
  final List<Folder> folders;
  final bool visible;

  const DashboardTable({
    super.key,
    required this.width,
    required this.folders,
    this.visible = false,
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
                  child: Visibility(
                    visible: !visible,
                    child: FolderDashboard(
                      width: width * 0.2,
                      folder: folders[0],
                    ),
                  ),
                ),
                Expanded(
                  child: Visibility(
                    visible: !visible,
                    child: FolderDashboard(
                      width: width * 0.2,
                      folder: folders[1],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Visibility(
                      visible: !visible,
                      child: FolderDashboard(
                        width: width * 0.2,
                        folder: folders[2],
                      ),
                    )),
                Expanded(
                  child: Visibility(
                    visible: !visible,
                    child: FolderDashboard(
                      width: width * 0.2,
                      folder: folders[3],
                    ),
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