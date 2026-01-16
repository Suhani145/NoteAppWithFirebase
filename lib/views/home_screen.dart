import 'package:flutter/material.dart';
import '../data/folder_data_list.dart';
import '../utils/responsive_size.dart';
import '../utils/color.dart';
import 'widgets/appbar_in_home_screen_widget.dart';
import 'widgets/available_space_card_widget.dart';
import 'widgets/folder_card_widget.dart';
import 'widgets/navigation_bar_with_fab_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveSize responsiveSize = ResponsiveSize(context);
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
          color: screenBG,
          child: Column(
            children: [
              SizedBox(height: 35),
              AppBarInHomeScreen(
                  screenHeight: responsiveSize.screenHeight, screenWidth: responsiveSize.screenWidth),
              SizedBox(height: responsiveSize.screenHeight * 0.01),
              AvailableSpaceCard(
                  screenWidth: responsiveSize.screenWidth, screenHeight: responsiveSize.screenHeight),
              SizedBox(height: 35),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: FolderDataList.folderList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final folder = FolderDataList.folderList[index];
                      return FolderCardWidget(
                          screenWidth: responsiveSize.screenWidth,
                          screenHeight: responsiveSize.screenHeight,
                          folderData: folder);
                    }),
              ),
              NavigationBarWithFAB(
                  screenWidth: responsiveSize.screenWidth, screenHeight: responsiveSize.screenHeight),
            ],
          )),
    );
  }
}

