import 'package:flutter/material.dart';
import '../utils/responsive_size.dart';
import '../views/home_screen.dart';
import '../utils/color.dart';
import 'widgets/auth_action_button_widget.dart';
import 'widgets/social_auth_button_widget.dart';
import 'widgets/text_form_field_card.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 35,
                        color: baseColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "To access all the features",
                    style: TextStyle(fontSize: 17, color: black),
                  ),
                  TextFormFieldCard(
                    labelText: "User Name",
                  ),
                  TextFormFieldCard(
                    labelText: "Email",
                  ),
                  TextFormFieldCard(labelText: "Password"),
                  TextFormFieldCard(labelText: "Confirm Password"),
                  SizedBox(height: responsiveSize.screenHeight * 0.03),
                  AuthActionButton(
                    responsiveSize: responsiveSize,
                    authAction: 'Sign Up',
                    navigationScreen: HomeScreen(),
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
                    authAction: 'Sign Up',
                    authMethod: 'Google',
                  ),
                  SocialAuthButton(
                    authAction: 'Sign Up',
                    authMethod: 'Phone',
                  ),
                ]),
          )),
    );
  }
}
