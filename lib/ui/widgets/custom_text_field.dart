import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  final String hintText;
  final int maxLines;
  final bool autocorrect;
  final bool filled;
  final double borderWidth;
  final EdgeInsets? margin;
  final double width;
  
  const CustomTextField({ 
    Key? key,
    required this.hintText,
    required this.maxLines,
    this.margin,
    this.borderWidth = 0,
    this.width = double.infinity,
    this.autocorrect = false,
    this.filled = false,
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
          autocorrect: true,
          autofocus: false,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 15
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: kDarkGreyColor
            ),
            filled: filled,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(color: kDarkGreyColor, width: borderWidth),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(color: kDarkGreyColor, width: borderWidth),
            ),
          ),
        ),
      ),
    );
  }
}