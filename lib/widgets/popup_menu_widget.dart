import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteappwithfirebase/utils/color.dart';
import 'package:noteappwithfirebase/views/create_note_screen.dart';
class PopupMenuWidget extends StatelessWidget {
  const PopupMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: PopupMenuButton(
          icon: Icon(Icons.more_vert, color: baseColor),
          color: white,
          onSelected: (value){
            if(value ==1 ){
              Get.to(CreateNoteScreen());
            }
          },
          itemBuilder: (context)=>
              [
                PopupMenuItem(value : 1, child: Text("Edit")),
                PopupMenuItem(value : 2, child: Text("Delete")),
              ]
      )
    );
  }
}
