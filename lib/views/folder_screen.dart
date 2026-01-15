import 'package:flutter/material.dart';
import 'package:noteappwithfirebase/models/folder_data_model.dart';
import 'package:noteappwithfirebase/utils/color.dart';
import 'package:noteappwithfirebase/utils/responsive_size.dart';
import 'widgets/appbar_in_folder_screen_widget.dart';
import 'widgets/note_tile_grid_view_widget.dart';
class FolderScreen extends StatelessWidget {
  const FolderScreen({super.key, required this.folderData});
  final FolderDataModel folderData;

  @override
  Widget build(BuildContext context) {
    ResponsiveSize responsiveSize = ResponsiveSize(context);

    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
        color: screenBG,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              AppBarInFolderScreenWidget(responsiveSize: responsiveSize,
              folderData: folderData,
              ),
              SizedBox(height: responsiveSize.screenHeight* 0.001),
              NoteTileGridView(responsiveSize: responsiveSize,),

            ],
          ),
        )
      ),
    );
  }
}




