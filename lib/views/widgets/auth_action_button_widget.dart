import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/color.dart';
import '../../utils/responsive_size.dart';

class AuthActionButton extends StatelessWidget {
  const AuthActionButton({
    super.key,
    required this.responsiveSize,
    required this.authAction,
    required this.onTap,
  });

  final ResponsiveSize responsiveSize;
  final String authAction;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: baseColor,
          foregroundColor: white,
          alignment: Alignment.center,
          fixedSize: Size(
              responsiveSize.screenWidth, responsiveSize.screenHeight * 0.05),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(6),
          ),
        ),
        child: Text(
          authAction,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}
