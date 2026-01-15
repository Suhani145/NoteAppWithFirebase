import 'package:flutter/material.dart';
import '../../utils/color.dart';

class TextFormFieldCard extends StatelessWidget {
  const TextFormFieldCard({
    super.key, required this.labelText
  });
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: white,
      elevation: 0,
      child: TextFormField(
        style: TextStyle(),
        decoration: InputDecoration(
            labelText: labelText,
            hintText: "Enter your $labelText",
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: baseColor,
                  width: 1,
                )
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: baseColor,
                    width: 2
                )
            )
        ),
      ),
    );
  }
}
