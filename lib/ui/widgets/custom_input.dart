import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

  final String hintText;
  final bool autocorrect;
  final bool filled;
  final Icon icon;
  final Color hintColor;
  final EdgeInsets padding;
  
  const CustomInput({ 
    Key? key,
    required this.hintText,
    required this.icon,
    required this.hintColor,
    required this.padding,
    this.autocorrect = false,
    this.filled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      child: TextField(
        autocorrect: true,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: icon,
          hintStyle: TextStyle(
            color: hintColor
          ),
          filled: filled,
          fillColor: kGreyColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide(color: kGreyColor, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide(color: kGreyColor, width: 2),
          ),
        ),
      ),
    );
  }
}