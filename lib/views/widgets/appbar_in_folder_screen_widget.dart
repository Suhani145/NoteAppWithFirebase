import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/folder_data_model.dart';
import '../../utils/color.dart';
import '../../utils/responsive_size.dart';

class AppBarInFolderScreenWidget extends StatelessWidget {
  const AppBarInFolderScreenWidget({
    super.key,
    required this.responsiveSize,
    required this.folderData,
  });

  final FolderDataModel folderData;
  final ResponsiveSize responsiveSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsiveSize.screenWidth,
      height: responsiveSize.screenHeight * 0.1,
      child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: Get.back,
                      icon: Icon(Icons.arrow_back_ios,
                          color: baseColor, size: 25),
                    ),
                    Text(
                      "Back",
                      style: TextStyle(fontSize: 20, color: baseColor),
                    ),
                  ],
                ),
                Text(folderData.title,
                    style: TextStyle(
                        fontSize: 22,
                        color: black,
                        fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Icon(Icons.search, color: baseColor, size: 25),
                    Text(" Search",
                        style: TextStyle(fontSize: 20, color: baseColor))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
