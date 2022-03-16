import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInput extends StatefulWidget {
  final String hintText;
  final bool autocorrect;
  final bool filled;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color hintColor;
  final double borderWidth;
  final EdgeInsets? margin;
  final double width;
  final bool readOnly;
  final String value;

  const CustomInput({
    Key? key,
    required this.hintText,
    required this.hintColor,
    this.margin,
    this.value = '',
    this.borderWidth = 0,
    this.width = double.infinity,
    this.prefixIcon = null,
    this.suffixIcon,
    this.autocorrect = false,
    this.filled = false,
    this.obscureText = false,
    this.readOnly = false,
  }) : super(key: key);

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  Widget suffixPassword() {
    return GestureDetector(
      onTap: () {
        _togglePasswordVisibility();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Icon(
          _isHidePassword ? Icons.visibility_off : Icons.visibility,
          color: kDarkGreyColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 50.h,
      margin: widget.margin,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kGreyColor),
      child: TextFormField(
        initialValue: widget.value,
        readOnly: widget.readOnly,
        obscureText: widget.obscureText ? _isHidePassword : widget.obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 15.h,
          ),
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.obscureText ? suffixPassword() : null,
          hintStyle: TextStyle(
            color: widget.hintColor,
            fontWeight: light,
            fontSize: 12.sp,
          ),
          filled: widget.filled,
          fillColor: kGreyColor,
          focusColor: kDarkGreyColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide:
                BorderSide(
                  color: kGreyColor,
                  width: widget.borderWidth
                ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide:
                BorderSide(
                  color: kGreyColor, 
                  width: widget.borderWidth
                ),
          ),
        ),
      ),
    );
  }
}
