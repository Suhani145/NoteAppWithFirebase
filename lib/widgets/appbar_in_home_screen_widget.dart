import 'package:flutter/material.dart';
import 'package:noteappwithfirebase/utils/color.dart';

class AppBarInHomeScreen extends StatelessWidget {
  const AppBarInHomeScreen({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.1,
      width: screenWidth,
      child: Card(
          elevation: 0,
          shadowColor: Colors.transparent,
          color: Colors.transparent,
          child: Row(
            children: [
              SizedBox(width: screenWidth* 0.05),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Welcome, user !",
                      style: TextStyle(
                          fontSize: 15)
                  ),
                  Text('Note-Taking App',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15))
                ],
              ),
              SizedBox(width: screenWidth* 0.35),
              Icon(Icons.notifications_active_outlined, color: iconColor),
              SizedBox(width: screenWidth* 0.05),
              SizedBox(
                height: screenHeight * 0.08,
                width: screenWidth* 0.15,
                child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                    child: Icon(Icons.person)
                ),
              )
            ],
          )
      ),
    );
  }
}