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
    return Card(
        color: white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                style: TextStyle(
                    color: black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,),
              Text(description,
                  style: TextStyle(
                    color: black,
                    fontSize: 18,
                  ),
                  maxLines: _maxLineForDescription(description),
          overflow: TextOverflow.ellipsis,),
              Text(dateTime.toString(),
                  style: TextStyle(
                    color: black,
                    fontSize: 14,
                  ))
            ],
          ),
        )
    );
  }
}

int? _maxLineForDescription(String text){
  int length = text.length;
  if (length < 80){
    return 2;
  }
  else if(length < 200){
    return 4;
  }
  else{
    return 7;
  }
}