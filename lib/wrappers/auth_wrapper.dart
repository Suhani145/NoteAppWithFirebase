import'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:noteappwithfirebase/controllers/auth_controller.dart';
import 'package:noteappwithfirebase/views/home_screen.dart';
import 'package:noteappwithfirebase/views/onboarding_screen.dart';
class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return Obx((){
         if(authController.currentUser.value == null){
           return OnboardingScreen();
         }else{
           return HomeScreen();
         }
    }
    );
  }
}
