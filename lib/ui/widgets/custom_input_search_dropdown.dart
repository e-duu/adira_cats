import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:textfield_tags/textfield_tags.dart';

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
        color: kGreyColor,
      ),
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
            child: DropdownButton2(
              customButton: const Icon(
                Icons.list,
                size: 30,
              ),
              customItemsIndexes: const [3],
              customItemsHeight: 8,
              items: [
                ...MenuItems.firstItems.map(
                  (item) =>
                  DropdownMenuItem<MenuItem>(
                    value: item,
                    child: MenuItems.buildItem(item),
                  ),
                ),
              ],
              onChanged: (value) {
                MenuItems.onChanged(context, value as MenuItem);
              },
              itemHeight: 48,
              itemPadding: const EdgeInsets.only(left: 16, right: 16),
              dropdownWidth: 60.w,
              dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              dropdownElevation: 8,
              offset: const Offset(0, 8),
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

class MenuItem {
  final IconData icon;

  const MenuItem({
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [home, share, settings];

  static const home = MenuItem(icon: Icons.home);
  static const share = MenuItem(icon: Icons.share);
  static const settings = MenuItem(icon: Icons.settings);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(
          item.icon,
          size: 22
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
      //Do something
        break;
      case MenuItems.settings:
      //Do something
        break;
      case MenuItems.share:
      //Do something
        break;
    }
  }
}