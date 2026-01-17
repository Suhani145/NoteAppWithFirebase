import 'package:flutter/material.dart';
import'package:get/get.dart';
import 'package:noteappwithfirebase/controllers/auth_controller.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(AuthController());
  print("🔥 Firebase project: ${Firebase.app().options.projectId}");
  runApp( NoteTakingApp());
}




