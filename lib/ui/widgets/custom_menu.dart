import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomMenu extends StatelessWidget {

  final String imageUrl;
  final String text;
  final Function() onTap;
  
  const CustomMenu({ 
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: kGreyColor,
            width: 2,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl
                  )
                )
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 10,
                fontWeight: bold
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}