import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_checkbox.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CustomInputCheckBox extends StatefulWidget {
  final String title;
  final String value;
  final bool checkBox;

  CustomInputCheckBox({
    Key? key,
    required this.title,
    this.value = '',
    this.checkBox = false,
  }) : super(key: key);

  @override
  State<CustomInputCheckBox> createState() => _CustomInputCheckBoxState();
}

class _CustomInputCheckBoxState extends State<CustomInputCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20.h,
      ),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 13.sp,
                  ),
                ),
                CustomCheckbox(
                  value: widget.checkBox,
                ),
              ]),
          CustomInput(
            hintText: 'Tambahkan keterangan ...',
            value: widget.value,
            hintColor: kDarkGreyColor,
          ),
        ],
      ),
    );
  }
}
