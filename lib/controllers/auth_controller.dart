import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:noteappwithfirebase/models/auth_model.dart';
import 'package:noteappwithfirebase/views/home_screen.dart';
import 'package:noteappwithfirebase/views/onboarding_screen.dart';

class AuthController extends GetxController{

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Rx<AuthUserModel?> currentUser = Rx<AuthUserModel?>(null);

  @override
  void onInit(){
    super.onInit();
    //listening firebase auth
    _firebaseAuth.authStateChanges().listen((firebaseUser){
      if(firebaseUser == null){
        currentUser.value = null;
      }else{
        currentUser.value = AuthUserModel(uid: firebaseUser.uid, email: firebaseUser.email);
      }
    }

    );

  }

  //login
Future<void> login(String email, String password) async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      Get.to(HomeScreen());
    }catch(e){
      print("Error in login : $e");
    }
}

//SignUp
Future<void> signUp(String email, String password)async{
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      Get.to(HomeScreen());
    }on FirebaseAuthException catch (e) {
      print("FirebaseAuthException");
      print("Code: ${e.code}");
      print("Message: ${e.message}");
      Get.snackbar("Signup Failed", e.message ?? "Auth error");
    } catch (e) {
      print("Unknown error: $e");
      Get.snackbar("Error", e.toString());
    }
}

//logout
Future<void> logout()async{
   await _firebaseAuth.signOut();
   Get.to(OnboardingScreen());
}
}