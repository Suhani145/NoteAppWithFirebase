import 'package:flutter/material.dart';
import '../utils/color.dart';
import '../utils/responsive_size.dart';

class NoteTileWidget extends StatelessWidget {
  const NoteTileWidget({
    super.key,
    required this.responsiveSize, required this.title, required this.description, required this.dateTime,
  });

  final ResponsiveSize responsiveSize;
  final String title;
  final String description;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: responsiveSize.screenHeight*0.16,
        maxHeight: responsiveSize.screenHeight*0.35,
        minWidth: responsiveSize.screenWidth*0.38,
        maxWidth: responsiveSize.screenWidth*0.38,
      ),
      child: Card(
          color: white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: TextStyle(
                      color: black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                Text(description,
                    style: TextStyle(
                      color: black,
                      fontSize: 18,
                    )),
                Text(dateTime.toString(),
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                    ))
              ],
            ),
          )
      ),
    );
  }
}
