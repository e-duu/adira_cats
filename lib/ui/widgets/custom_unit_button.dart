import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUnitButton extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsets margin;
  final String imageUrl;
  final Color color;
  final Function() onPressed;

  const CustomUnitButton({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
    required this.imageUrl,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(''),
      ),
    );
  }
}
