import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_text_form_field.dart';
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
                  // NOTE : LOGO
                  Container(
                    width: 242,
                    height: 40,
                    margin: EdgeInsets.only(top: 36, bottom: 48),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/adira_logo_yellow.png',
                        )
                      )
                    ),
                  ),
                  Text(
                    'Login',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: bold
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 21,
                    ),
                    child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'User ID',
                      prefixIcon: Icon(Icons.password, color: Colors.grey,),
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: kGreyColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: kGreyColor, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: kGreyColor, width: 2),
                      ),
                    ),)
                  ),
                  // SizedBox(height: 12,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 21,
                    ),
                    child: TextField(
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.password, color: Colors.grey,),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined, color: Colors.grey,),
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: kGreyColor,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: kGreyColor, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: kGreyColor, width: 2),
                      ),
                    ),)
                  ),
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