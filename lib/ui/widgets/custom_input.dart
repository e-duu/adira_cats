import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {

  final String hintText;
  final bool autocorrect;
  final bool filled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color hintColor;
  final EdgeInsets padding;
  final EdgeInsets margin;
  
  const CustomInput({ 
    Key? key,
    required this.hintText,
    this.prefixIcon = null,
    this.suffixIcon,
    required this.hintColor,
    required this.padding,
    required this.margin,
    this.autocorrect = false,
    this.filled = false,
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
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: widget.padding,
      margin: widget.margin,
      child: TextFormField(
        autocorrect: true,
        autofocus: false,
        obscureText: _isHidePassword,
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: GestureDetector(
            onTap: () {
              _togglePasswordVisibility(); 
            },
            child: Icon(
              _isHidePassword ? Icons.visibility_off : Icons.visibility,
              color: kDarkGreyColor,
            ),
          ),
          hintStyle: TextStyle(
            color: widget.hintColor
          ),
          filled: widget.filled,
          fillColor: kGreyColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide(color: kDarkGreyColor, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
            borderSide: BorderSide(color: kDarkGreyColor, width: 2),
          ),
        ),
      ),
    );
  }
}

// class CustomInput extends StatelessWidget {

//   final String hintText;
//   final bool autocorrect;
//   final bool filled;
//   final Icon? icon;
//   final Color hintColor;
//   final EdgeInsets padding;
  
//   const CustomInput({
//     Key? key,
//     required this.hintText,
//     this.icon,
//     required this.hintColor,
//     required this.padding,
//     this.autocorrect = false,
//     this.filled = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: padding,
//       child: TextFormField(
//         autocorrect: true,
//         autofocus: false,
//         obscureText: _isHidePassword,
//         decoration: InputDecoration(
//           hintText: hintText,
//           prefixIcon: icon,
//           hintStyle: TextStyle(
//             color: hintColor
//           ),
//           filled: filled,
//           fillColor: kGreyColor,
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(defaultRadius),
//             borderSide: BorderSide(color: kGreyColor, width: 2),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(defaultRadius),
//             borderSide: BorderSide(color: kGreyColor, width: 2),
//           ),
//         ),
//       ),
//     );
//   }
// }