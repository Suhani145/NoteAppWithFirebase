import 'package:flutter/material.dart';
class ResponsiveSize {
  final BuildContext context;
  final double screenWidth;
  final double screenHeight;
  ResponsiveSize._(this.context, this.screenWidth, this.screenHeight);

  factory ResponsiveSize(BuildContext context){
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return ResponsiveSize._(context, width, height);
  }
}