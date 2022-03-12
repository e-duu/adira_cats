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
        width: double.infinity,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/adira_logo_yellow',
                )
              )
            ),
            )
          ],
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // backgroundImage(),
            content(),
          ],
        ),
      ),
    );
  }
}