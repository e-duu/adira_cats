import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget backgroundImage(){
      return Container(
        width: double.infinity,
        height: 327,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image_login.png',
            )
          )
        ),
      );
    }

    Widget content(){
      return Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 291),
              padding: EdgeInsets.symmetric(
                horizontal: 36,
                vertical: 36,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // NOTE : ABOUT
                  // Text(
                  //   'About',
                  //   style: blackTextStyle.copyWith(
                  //     fontSize: 16,
                  //     fontWeight: bold,
                  //   ),
                  // ),
                  Container(
                    width: 240,
                    height: 40,
                    margin: EdgeInsets.only(top: 36),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/adira_logo_yellow.png',
                        )
                      )
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              backgroundImage(),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}