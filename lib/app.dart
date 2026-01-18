import 'package:flutter/material.dart';
import 'package:noteappwithfirebase/views/onboarding_screen.dart';
import 'package:get/get.dart';
import 'package:noteappwithfirebase/wrappers/auth_wrapper.dart';

class NoteTakingApp extends StatelessWidget {
  const NoteTakingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AuthWrapper(),
    );
  }
}
