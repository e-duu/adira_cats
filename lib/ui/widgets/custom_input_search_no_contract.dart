import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputSearchNoContract extends StatefulWidget {
  final Function() onPressed;
  final String value;
  final EdgeInsets margin;

  const CustomInputSearchNoContract({
    Key? key,
    required this.onPressed,
    this.value = '',
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  State<CustomInputSearchNoContract> createState() => _CustomInputSearchNoContract();
}

class _CustomInputSearchNoContract extends State<CustomInputSearchNoContract> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          defaultRadius.r,
        ),
        color: kGreyColor,
      ),
      child: TextFormField(
        autocorrect: true,
        autofocus: false,
        initialValue: widget.value,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 18.h,
          ),
          hintText: 'Cari unit dari nomor kontrak ...',
          suffixIcon: IconButton(
            onPressed: widget.onPressed,
            hoverColor: kTransparent,
            focusColor: kTransparent,
            highlightColor: kTransparent,
            icon: Icon(
              Icons.search_sharp,
              size: 25,
              color: kDarkGreyColor,
            ),
          ),
          hintStyle: TextStyle(
            color: kDarkGreyColor,
          ),
          filled: true,
          fillColor: kWhiteColor,
          focusColor: kDarkGreyColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              defaultRadius.r,
            ),
            borderSide: BorderSide(
              color: kLigthGrayColor,
              width: 2.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              defaultRadius.r,
            ),
            borderSide: BorderSide(
              color: kDarkGreyColor,
              width: 2.w,
            ),
          ),
        ),
      ),
    );
  }
}