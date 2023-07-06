import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../models/folder_model.dart';

class FolderDashboard extends StatelessWidget {

  final Folder folder;
  final double width;
  const FolderDashboard({super.key, required this.folder, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width * 2.75,
      padding: EdgeInsets.all(15.0),
      child: CustomPaint(
        painter: FilesFolder(color: folder.color),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.circular(70.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: folder.icon,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      folder.currentValue,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      folder.title,
                      style: Theme.of(context).textTheme.bodyMedium?.apply(color: AppColors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilesFolder extends CustomPainter {

  final Color color;

  FilesFolder({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;

    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = color
      ..isAntiAlias = true;

    canvas.drawPath(
      Path()
        ..moveTo(width * 0.15, 0)
        ..lineTo(width * 0.4, 0)
        ..quadraticBezierTo(width * 0.57, 0, width * 0.6, height * 0.12)
        ..quadraticBezierTo(
            width * 0.62, height * 0.19, width * 0.7, height * 0.2)
        ..lineTo(width * 0.8, height * 0.2)
        ..quadraticBezierTo(width, height * 0.2, width, height * 0.35)
        ..lineTo(width, height * 0.75)
        ..quadraticBezierTo(width, height, width * 0.75, height)
        ..lineTo(width * 0.25, height)
        ..quadraticBezierTo(0, height, 0, height * 0.75)
        ..lineTo(0, height * 0.2)
        ..quadraticBezierTo(0, 0, width * 0.2, 0),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}