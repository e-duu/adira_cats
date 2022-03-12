import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 442),
              width: 240,
              height: 42,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/adira_logo_white.png'),
                ),
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 72),
              child: Column(
                children: [
                  Text(
                    'CATS',
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                    ),
                  ),
                  Text(
                    'Collection Activity and Tracking System',
                    style: blackTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
