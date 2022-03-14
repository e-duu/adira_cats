import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomIconUpload extends StatelessWidget {

  final String text;
  
  const CustomIconUpload({ 
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 172,
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/icon_upload.png",
                )
              )
            )
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            text,
            style: darkGreyTextStyle.copyWith(
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}