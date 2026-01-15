import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteappwithfirebase/views/folder_screen.dart';
import '../../models/folder_data_model.dart';
import '../../utils/color.dart';

class FolderCardWidget extends StatelessWidget {
  const FolderCardWidget(
      {super.key,
        required this.screenWidth,
        required this.screenHeight,
        required this.folderData});

  final double screenWidth;
  final double screenHeight;
  final FolderDataModel folderData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth * 0.28,
      height: screenHeight * 0.03,
      child: GestureDetector(
        onTap: () {
          Get.to(FolderScreen(folderData: folderData));
        },
        child: Card(
            elevation: 6,
            color: white,
            shadowColor: baseColor,
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(folderData.icon, color: baseColor, size: 35),
                  Text(folderData.title,
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Text("${folderData.fileNumber} files",
                      style: TextStyle(color: black, fontSize: 15)),
                  Text("Size: ${folderData.fileSize} MB",
                      style: TextStyle(color: black, fontSize: 12)),
                ],
              ),
            )),
      ),
    );
  }
}
