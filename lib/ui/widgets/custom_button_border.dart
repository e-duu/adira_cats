import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';

class CustomButtonBorder extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final Color borderColor;
  final double borderWidth;
  final EdgeInsets margin;
  final FontWeight fontWeight;

  const CustomButtonBorder({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    required this.borderColor,
    required this.borderWidth,
    required this.fontWeight,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      margin: margin,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          side: BorderSide(color: borderColor, width: borderWidth),
        ),
        child: Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 12,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
