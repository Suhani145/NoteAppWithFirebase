import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/color.dart';
import '../utils/responsive_size.dart';
import '../views/home_screen.dart';
import '../views/widgets/popup_menu_widget.dart';
class CreateNoteScreen extends StatelessWidget {
  const CreateNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveSize responsiveSize = ResponsiveSize(context);
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
        child: Container(
          color: screenBG,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(

              children: [
                SizedBox(height: responsiveSize.screenHeight*0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){Get.to(HomeScreen());}, icon: Icon(Icons.arrow_back_ios), color: baseColor),
                    Text("Write Note", style: TextStyle(
                      color: baseColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                    PopupMenuWidget()
                  ],
                ),
                SizedBox(height: responsiveSize.screenHeight*0.01),
                Expanded(child: Card(
                  elevation: 0,
                  color: screenBG,
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    expands: true,
                  )
                ))
              ],
            ),
          )
        ));
  }
}
