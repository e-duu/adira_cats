import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;

  CustomCheckbox({
    Key? key,
    this.value = false,
  }) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _value = false;

  void _valueChanged(bool? value) => setState(() => _value = value!);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Checkbox(
      value: widget.value == true ? true : _value,
      onChanged: _valueChanged,
      shape: CircleBorder(),
      side: MaterialStateBorderSide.resolveWith(
        (states) => BorderSide(
          width: 2,
          color: kDarkGreyColor,
        ),
      ),
      activeColor: kTransparent,
      checkColor: kBlackColor,
      focusColor: kBlackColor,
    ));
  }
}
