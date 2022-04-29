import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_input_search_no_contract.dart';
import 'package:adira_cats/ui/widgets/custom_input_search_plat_no.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class CustomInputSearchMulti extends StatefulWidget {
  CustomInputSearchMulti({Key? key}) : super(key: key);

  @override
  State<CustomInputSearchMulti> createState() => _CustomInputSearchMultiState();
}

class _CustomInputSearchMultiState extends State<CustomInputSearchMulti> {
  bool inputItems = true;

  void valueChanged() => setState(() {
        if (inputItems == true) {
          inputItems = false;
        } else {
          inputItems = true;
        }
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: kLigthGrayColor,
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(defaultRadius),
              ),
            ),
            child: IconButton(
              icon: Icon(
                inputItems == true
                    ? Icons.document_scanner
                    : Icons.local_activity,
                color: kGreenColor,
              ),
              onPressed: valueChanged,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Container(
            width: 240.w,
            child: inputItems == true
                ? CustomInputSearchPlatNo(onPressed: () {})
                : CustomInputSearchNoContract(onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
