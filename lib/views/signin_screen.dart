import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noteappwithfirebase/controllers/auth_controller.dart';
import '../utils/responsive_size.dart';
import '../views/home_screen.dart';
import '../utils/color.dart';
import 'widgets/auth_action_button_widget.dart';
import 'widgets/social_auth_button_widget.dart';
import 'widgets/text_form_field_card.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    ResponsiveSize responsiveSize = ResponsiveSize(context);
    return DefaultTextStyle(
      style: TextStyle(decoration: TextDecoration.none),
      child: Container(
          color: screenBG,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: responsiveSize.screenHeight * 0.15),
                  Text(
                    "Log In",
                    style: TextStyle(
                        fontSize: 35,
                        color: baseColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Good to see you back!",
                    style: TextStyle(fontSize: 17, color: black),
                  ),
                  TextFormFieldCard(
                    textEditingController: emailController,
                    labelText: "Email",
                  ),
                  TextFormFieldCard(
                    labelText: "Password",
                    textEditingController: passwordController,
                  ),
                  SizedBox(height: responsiveSize.screenHeight * 0.03),
                  AuthActionButton(
                    responsiveSize: responsiveSize,
                    authAction: 'Log in',
                    onTap: () {
                      authController.login(
                          emailController.text, passwordController.text);
                    },
                  ),
                  SizedBox(height: responsiveSize.screenHeight * 0.001),
                  Center(
                    child: Text(
                      "Or",
                      style: TextStyle(fontSize: 20, color: black),
                    ),
                  ),
                  SizedBox(height: responsiveSize.screenHeight * 0.001),
                  SocialAuthButton(
                    authAction: 'Sign in',
                    authMethod: 'Google',
                  ),
                  SocialAuthButton(
                    authAction: 'Sign in',
                    authMethod: 'Phone',
                  ),
                ]),
          )),
    );
  }
}
