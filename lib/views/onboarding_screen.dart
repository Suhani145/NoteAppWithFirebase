import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteappwithfirebase/utils/color.dart';
import 'package:noteappwithfirebase/views/home_screen.dart';
import 'package:noteappwithfirebase/views/signin_screen.dart';
import 'signup_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: SingleChildScrollView(
        child: Container(
            // constraints: BoxConstraints.expand(),
            color: screenBG,
            height: screenHeight,
            width: screenWidth,
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 60),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Note-Tak',
                      style: TextStyle(
                          fontSize: 35,
                          color: black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'ing App',
                      style: TextStyle(
                          fontSize: 35,
                          color: baseColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Icon(Icons.sticky_note_2_outlined, color: baseColor, size: 200),
                SizedBox(height: 70),
                Text("Save and Share Notes",
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Get.to(SignUpScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: baseColor,
                      foregroundColor: white,
                      fixedSize: Size(screenWidth * 0.4, screenHeight * 0.07),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20))),
                  child: Text("Create Account", style: TextStyle(fontSize: 18)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Have an account?',
                      style: TextStyle(
                        fontSize: 20,
                        color: black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(SignInScreen());
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          fontSize: 20,
                          color: baseColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
