import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSummaryCase extends StatefulWidget {
  final String title;

  CustomSummaryCase({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<CustomSummaryCase> createState() => _CustomSummaryCaseState();
}

class _CustomSummaryCaseState extends State<CustomSummaryCase> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: blackTextStyle.copyWith(
              fontSize: 14.sp,
              fontWeight: normal,
            ),
            textAlign: TextAlign.start,
            overflow: TextOverflow.visible,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value as int?;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Ya",
                      style: blackTextStyle.copyWith(
                        fontSize: 14.sp,
                        fontWeight: normal,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 6.w,
              ),
              Container(
                child: Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value as int?;
                        });
                      },
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Tidak",
                      style: blackTextStyle.copyWith(
                        fontSize: 14.sp,
                        fontWeight: normal,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
