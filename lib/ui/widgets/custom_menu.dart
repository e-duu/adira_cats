import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMenu extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Function() onTap;

  const CustomMenu({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 110.w,
        height: 110.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: kGreyColor,
              width: 2.w,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imageUrl))),
            ),
            SizedBox(
              height: 17.h,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
