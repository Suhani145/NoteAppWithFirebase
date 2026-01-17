import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteappwithfirebase/controllers/auth_controller.dart';
import '../utils/color.dart';
import '../utils/responsive_size.dart';
import '../views/onboarding_screen.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    ResponsiveSize responsiveSize = ResponsiveSize(context);
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
        color: screenBG,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: responsiveSize.screenHeight*0.05),
               IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.arrow_back_ios, color: baseColor)),
               Center(
                 child: SizedBox(
                   width: responsiveSize.screenWidth*0.3,
                   height: responsiveSize.screenHeight*0.15,
                   child: Card(
                     elevation: 0,
                     color: white,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadiusGeometry.circular(100)
                     ),
                     child: Icon(Icons.person, size: 40, color: iconColor),
                   ),
                 ),
               ),
              SizedBox(height: responsiveSize.screenHeight*0.1),
              SizedBox(
                height: responsiveSize.screenHeight*0.1,
                width: responsiveSize.screenWidth*0.9,
                child: Card(
                  color: white,
                   elevation: 2,
                   shadowColor: baseColor,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         Text("User Name",
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18
                         )),
                         Text("username@gmail.com",
                             style: TextStyle(
                                 fontSize: 16
                             ))
                       ],
                     ),
                   )
                ),
              ),
              SizedBox(height: responsiveSize.screenHeight*0.05),
              Center(
                child: ElevatedButton(onPressed: (){
                  authController.logout();
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: baseColor,
                      foregroundColor: white,
                    ),
                    child:
                Text("Log Out")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
