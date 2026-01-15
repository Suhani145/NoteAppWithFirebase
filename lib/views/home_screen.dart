import 'package:flutter/material.dart';
import 'package:noteappwithfirebase/data/folder_data_list.dart';
import '../utils/color.dart';
import 'widgets/appbar_in_home_screen_widget.dart';
import 'widgets/available_space_card_widget.dart';
import 'widgets/folder_card_widget.dart';
import 'widgets/navigation_bar_with_fab_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
          color: screenBG,
          child: Column(
            children: [
              SizedBox(height: 35),
              AppBarInHomeScreen(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              SizedBox(height: screenHeight * 0.01),
              AvailableSpaceCard(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(height: 35),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: FolderDataList.folderList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final folder = FolderDataList.folderList[index];
                      return FolderCardWidget(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          folderData: folder);
                    }),
              ),
              NavigationBarWithFAB(
                  screenWidth: screenWidth, screenHeight: screenHeight),
            ],
          )),
    );
  }
}

