import 'dart:async';

import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPageNewTwo extends StatefulWidget {
  const SplashPageNewTwo({Key? key}) : super(key: key);

  @override
  State<SplashPageNewTwo> createState() => _SplashPageNewTwoState();
}

class _SplashPageNewTwoState extends State<SplashPageNewTwo> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(
          seconds: 5,
        ), () {
      Navigator.pushNamed(context, '/load');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Container(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 105.w,
                      height: 132.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/image_splash2.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding.h,
                    ),
                    Text(
                      'Collection Activity and Tracking System',
                      style: blackTextStyle.copyWith(
                        fontSize: 12.sp,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 50.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Powered by",
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 11.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: defaultPadding.h,
                    ),
                    Container(
                      width: 140.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/adira_logo_yellow.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
