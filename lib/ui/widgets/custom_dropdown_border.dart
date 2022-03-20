import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownBorder extends StatefulWidget {

  final List items;
  final String hintText;
  
  const CustomDropdownBorder({
    Key? key,
    required this.items,
    required this.hintText,
  }) : super(key: key);
  
  @override
  Custom_DropdownState createState() => Custom_DropdownState();
}
  
class Custom_DropdownState extends State<CustomDropdownBorder> {
    
  // Initial Selected Value
  String? dropdownvalue;

  @override
  Widget build(BuildContext context) {

    // List of items in our dropdown menu
    var items = [    
      for (var i = 0; i < widget.items.length; i++) '${widget.items[i]}',
    ];

    return Container(
      width: double.infinity,
      height: 48.h,
      margin: EdgeInsets.symmetric(
        horizontal: 36.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: kDarkGreyColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(defaultRadius),
        color: kLigthGrayColor,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            
          hint: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 18.w,
            ),
            child: Text(
              widget.hintText,
              style: darkGreyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 12.sp,
              ),
            ),
          ),
          
          // Initial Value
          value: dropdownvalue,
          
          // Down Arrow Icon
          icon: Container(
            margin: EdgeInsets.only(
              right: 18.w,
            ),
            child: Icon(
              Icons.keyboard_arrow_down
            ),
          ),
            
          // Array list of items
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Container(
                margin: EdgeInsets.only(
                  left: 18.w,
                ),
                child: Text(
                  items,
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) { 
            setState(() {
              dropdownvalue = newValue!;
            });
          },
        ),
      ),
    );
  }
}