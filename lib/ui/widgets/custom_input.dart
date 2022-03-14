import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

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
  final EdgeInsets contentPadding;
  final double width;
  
  const CustomInput({ 
    Key? key,
    required this.hintText,
    required this.hintColor,
    required this.contentPadding,
    this.margin,
    this.borderWidth = 0,
    this.width = double.infinity,
    this.prefixIcon = null,
    this.suffixIcon,
    this.autocorrect = false,
    this.filled = false,
    this.obscureText = false,
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
  
  Widget suffixPassword(){
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
      margin: widget.margin,
      child: TextFormField(
        autocorrect: true,
        autofocus: false,
        obscureText: widget.obscureText ? _isHidePassword : widget.obscureText,
        decoration: InputDecoration(
          contentPadding: widget.contentPadding,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.obscureText ? suffixPassword() : null,
          hintStyle: TextStyle(
            color: widget.hintColor
          ),
          filled: widget.filled,
          fillColor: kGreyColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide(color: kDarkGreyColor, width: widget.borderWidth),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide(color: kDarkGreyColor, width: widget.borderWidth),
          ),
        ),
      ),
    );
  }
}