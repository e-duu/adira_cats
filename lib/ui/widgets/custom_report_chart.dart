import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_bar_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CustomReportChart extends StatelessWidget {

  final String title;
  final Widget chart;
  
  const CustomReportChart({ 
    Key? key,
    required this.title,
    required this.chart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 261.h,
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 18.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kLigthGrayColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 13.sp,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            chart,
          ],
        ),
      ),
    );
  }
}