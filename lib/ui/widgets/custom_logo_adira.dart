import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomLogoAdira extends StatelessWidget {

  final String text;
  
  const CustomLogoAdira({ 
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 34,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/adira_logo_yellow.png"
              )
            )
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Text(
          text,
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: bold,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}