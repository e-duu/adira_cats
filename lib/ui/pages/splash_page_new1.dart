import 'dart:async';

import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPageNewOne extends StatefulWidget {
  const SplashPageNewOne({Key? key}) : super(key: key);

  @override
  State<SplashPageNewOne> createState() => _SplashPageNewOneState();
}

class _SplashPageNewOneState extends State<SplashPageNewOne> {
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
      backgroundColor: kPrimaryColor,
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
                            'assets/image_splash1.png',
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
                        fontWeight: normal,
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
                        fontWeight: normal,
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
                            'assets/adira_logo_white.png',
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
