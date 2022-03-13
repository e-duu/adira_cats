import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomTextFormField extends StatelessWidget {

  final String hintText;
  final bool obscureText;
  // final TextEditingController controller;
  
  const CustomTextFormField({ Key? key, required this.hintText, this.obscureText = false, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            
          ),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscureText,
            // controller: controller,
            decoration: InputDecoration(
              // hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                )
              )
            ),
          )
        ],
      ),
    );
  }
}