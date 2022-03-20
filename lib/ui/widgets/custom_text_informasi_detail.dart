import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CustomTextInformasiDetail extends StatelessWidget {
  final String title;
  final String text;

  const CustomTextInformasiDetail({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title : $text",
      style: darkGreyTextStyle.copyWith(
        fontSize: 13.sp,
        fontWeight: light,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
