import 'package:adira_cats/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  const CustomBottomNavigationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 100.h,
        padding: EdgeInsets.symmetric(
          horizontal: 40.w,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24.r),
            topLeft: Radius.circular(24.r),
          ),
          boxShadow: [
            BoxShadow(
              color: kGrayColor.withOpacity(1),
              spreadRadius: 3,
              blurRadius: 18.r,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // NOTE: ICON CHAT
            Container(
              child: Stack(
                children: <Widget>[
                  Icon(
                    Icons.message,
                    color: kGrayColor,
                    size: 30.sp,
                  ),
                  Positioned(
                    left: 20.0,
                    bottom: 20.0,
                    child: Container(
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                      ),
                      constraints: BoxConstraints(
                        minHeight: 15.0,
                        minWidth: 15.0,
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          textAlign: TextAlign.center,
                          style: blackTextStyle.copyWith(
                            fontSize: 11.sp,
                            fontWeight: semibold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // NOTE: ICON LOCATION
            Container(
              child: Stack(
                children: [
                  Icon(
                    Icons.location_on,
                    color: kGrayColor,
                    size: 25.sp,
                  ),
                ],
              ),
            ),

            // NOTE: ICON HOME
            Container(
              child: Stack(
                children: [
                  Icon(
                    Icons.home,
                    color: kGrayColor,
                    size: 25.sp,
                  ),
                ],
              ),
            ),

            // NOTE: ICON NOTIFICATION
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
                vertical: 15.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: kBlackColor,
              ),
              child: Stack(
                children: [
                  Icon(
                    Icons.notifications,
                    color: kGrayColor,
                    size: 25.sp,
                  ),
                ],
              ),
            ),

            // NOTE: ICON PROFILE
            Container(
              child: Stack(
                children: [
                  Icon(
                    Icons.person,
                    color: kGrayColor,
                    size: 25.sp,
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
