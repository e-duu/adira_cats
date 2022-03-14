import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  final String hintText;
  final int maxLines;
  
  const CustomTextField({ 
    Key? key,
    required this.hintText,
    required this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 15,
        ),
        child: TextField(
          maxLines: maxLines,
          decoration: InputDecoration.collapsed(
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}