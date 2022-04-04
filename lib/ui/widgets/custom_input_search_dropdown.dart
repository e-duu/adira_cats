import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputSearchDropdown extends StatefulWidget {
  final Function() onPressedSuffix;
  final String hintText;
  final String value;
  final EdgeInsets margin;

  const CustomInputSearchDropdown({
    Key? key,
    required this.onPressedSuffix,
    required this.hintText,
    this.value = '',
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  State<CustomInputSearchDropdown> createState() => _CustomInputSearchDropdown();
}

class _CustomInputSearchDropdown extends State<CustomInputSearchDropdown> {
  String dropdownValue = '';

  List<String> items = [
    'One',
    'Two',
    'Three',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      margin: widget.margin == EdgeInsets.zero
          ? EdgeInsets.symmetric(
              horizontal: defaultMargin.w,
            )
          : widget.margin,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            defaultRadius.r,
          ),
          color: kGreyColor),
      child: TextFormField(
        autocorrect: true,
        autofocus: false,
        initialValue: widget.value,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 15.h,
          ),
          hintText: widget.hintText,
          suffixIcon: IconButton(
            onPressed: widget.onPressedSuffix,
            hoverColor: kTransparent,
            focusColor: kTransparent,
            highlightColor: kTransparent,
            icon: Icon(
              Icons.search_sharp,
            ),
          ),
          prefixIcon: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: Icon(Icons.arrow_drop_down,),
              onChanged: (String? newValue){
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              underline: null,
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
