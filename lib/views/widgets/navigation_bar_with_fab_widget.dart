import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteappwithfirebase/views/create_note_screen.dart';
import 'package:noteappwithfirebase/views/home_screen.dart';
import 'package:noteappwithfirebase/views/settings_screen.dart';
import '../../utils/color.dart';

class NavigationBarWithFAB extends StatelessWidget {
  const NavigationBarWithFAB({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: screenWidth,
          height: screenHeight * 0.09,
          child: Card(
              elevation: 0,
              color: white,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.to(HomeScreen());
                            },
                            icon: Icon(Icons.sticky_note_2_outlined,
                                color: iconColor)),
                        SizedBox(width: screenWidth * 0.045),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.event_note, color: iconColor)),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.lightbulb_outline,
                                color: iconColor)),
                        SizedBox(width: screenWidth * 0.045),
                        IconButton(
                            onPressed: () {
                              Get.to(SettingsScreen());
                            },
                            icon: Icon(Icons.settings, color: iconColor)),
                      ],
                    ),
                  ],
                ),
              )),
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                Get.to(CreateNoteScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: baseColor,
                foregroundColor: white,
                fixedSize: Size(screenWidth * 0.1, screenHeight * 0.065),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              child: Icon(
                Icons.add,
                size: 20,
                fontWeight: FontWeight.w700,
              )),
        ),
      ],
    );
  }
}
