import 'package:flutter/material.dart';

import '../../utils/color.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
    super.key,
    required this.authAction,
    required this.authMethod,
  });

  final String authAction;
  final String authMethod;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: baseColor,
            backgroundColor: screenBG,
            shadowColor: Colors.transparent,
            side: BorderSide(color: baseColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$authAction with ",
                style: TextStyle(color: black, fontSize: 18)),
            Text(authMethod,
                style: TextStyle(
                    color: black, fontWeight: FontWeight.w900, fontSize: 18))
          ],
        ));
  }
}
