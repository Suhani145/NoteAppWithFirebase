import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteappwithfirebase/views/create_note_screen.dart';

import '../utils/color.dart';
import '../utils/responsive_size.dart';
class AddNewNoteCardWidget extends StatelessWidget {
  const AddNewNoteCardWidget({
    super.key,
    required this.responsiveSize,
  });

  final ResponsiveSize responsiveSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: responsiveSize.screenWidth * 0.4,
      height:  responsiveSize.screenHeight * 0.18,
      child: Card(
          elevation: 2,
          shadowColor: baseColor,
          color: white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(

                style: ElevatedButton.styleFrom(
                  fixedSize: Size(6,6),
                  side: BorderSide(
                      color: baseColor,
                      width: 1
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: (){
                  Get.to(CreateNoteScreen());
                },
                child: Text("+", style: TextStyle(
                    fontSize: 20
                ),),
              ),
              Text("New Note", style: TextStyle(
                  color: black,
                  fontSize: 12
              ))
            ],
          )
      ),
    );
  }
}
