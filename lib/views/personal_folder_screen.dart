import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteappwithfirebase/data/file_data_list.dart';
import 'package:noteappwithfirebase/models/file_data_model.dart';
import 'package:noteappwithfirebase/utils/color.dart';
import 'package:noteappwithfirebase/utils/responsive_size.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../widgets/add_new_note_card_widget.dart';
import '../widgets/appbar_in_folder_screen_widget.dart';
import '../widgets/note_tile_widget.dart';
class PersonalFolderScreen extends StatelessWidget {
  const PersonalFolderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveSize responsiveSize = ResponsiveSize(context);
    List<Widget> gridItems = [AddNewNoteCardWidget(responsiveSize: responsiveSize)];
    for(var note in FileDataList.fileList){
        gridItems.add(
            NoteTileWidget(responsiveSize: responsiveSize,
            title: note.title,
              description:note.description ,
              dateTime: note.date,
            )
        );
    }
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
        color: screenBG,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 35),
            AppBarInFolderScreenWidget(responsiveSize: responsiveSize),
            SizedBox(height: responsiveSize.screenHeight* 0.01),
            Expanded(

              child: GridView.count(crossAxisCount: 2,
              crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.9,
                children: gridItems,
              ),

            ),

          ],
        )
      ),
    );
  }
}



