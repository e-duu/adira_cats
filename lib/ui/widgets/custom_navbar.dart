import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 114,
      padding: EdgeInsets.only(
        bottom: 30,
        top: 36,
        left: 36,
        right: 36
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => {}, 
            icon: Icon(Icons.subject_sharp)
          ),
          Text(
            "Pesan",
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: bold
            ),
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/image_user.png",
                )
              )
            ),
          )
        ],
      ),
    );
  }
}