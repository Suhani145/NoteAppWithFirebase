import 'package:flutter/material.dart';

import '../../utils/color.dart';

class AvailableSpaceCard extends StatelessWidget {
  const AvailableSpaceCard({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth*0.85,
      height: screenHeight* 0.16,
      child: Card(
        elevation: 10,
          shadowColor: baseColor,
          color: baseColor,
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                SizedBox(
                  width: screenWidth*0.15,
                  height: screenHeight* 0.065,
                  child: Card(

                      shadowColor: white,
                      color: Colors.transparent,
                      child: Icon(Icons.pie_chart_sharp,
                          size: 30, color: screenBG)
                  ),
                ),
                SizedBox(width: screenWidth * 0.06),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Available Space",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: white,
                            fontSize: 20
                        )),
                    Text("20.254 GB of 25 GB used",
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                            color: white,
                            fontSize: 15
                        )),
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}