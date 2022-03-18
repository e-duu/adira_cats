import 'package:adira_cats/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final bool isSelected;
  final bool isNotifMessage;
  final bool isNotifLocation;
  final bool isNotifHome;
  final bool isNotifBell;
  final bool isNotifProfile;

  const CustomBottomNavigationItem({
    Key? key,
    this.isSelected = false,
    this.isNotifMessage = false,
    this.isNotifLocation = false,
    this.isNotifHome = false,
    this.isNotifBell = false,
    this.isNotifProfile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // NOTE: ICON CHAT
        Container(
          child: Stack(
            children: [
              Icon(
                Icons.message,
                color: kGrayColor,
                size: 28.sp,
              ),
              if (isNotifMessage == true)
                Positioned(
                  left: 14.0.w,
                  child: Container(
                    padding: EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minHeight: 15.0.h,
                      minWidth: 15.0.w,
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
                size: 28.sp,
              ),
              if (isNotifLocation == true)
                Positioned(
                  left: 14.0.w,
                  child: Container(
                    padding: EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minHeight: 15.0.h,
                      minWidth: 15.0.w,
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

        // NOTE: ICON HOME
        Container(
          child: Stack(
            children: [
              Icon(
                Icons.home,
                color: kGrayColor,
                size: 28.sp,
              ),
              if (isNotifHome == true)
                Positioned(
                  left: 14.0.w,
                  child: Container(
                    padding: EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minHeight: 15.0.h,
                      minWidth: 15.0.w,
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

        // NOTE: ICON NOTIFICATION
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 14.w,
            vertical: 14.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: isSelected ? kBlackColor : kTransparent,
          ),
          child: Stack(
            children: [
              Icon(
                Icons.notifications,
                color: kGrayColor,
                size: 28.sp,
              ),
              if (isNotifBell == true)
                Positioned(
                  left: 14.0.w,
                  child: Container(
                    padding: EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minHeight: 15.0.h,
                      minWidth: 15.0.w,
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
        // NOTE: ICON PROFILE
        Container(
          child: Stack(
            children: [
              Icon(
                Icons.person,
                color: kGrayColor,
                size: 28.sp,
              ),
              if (isNotifProfile == true)
                Positioned(
                  left: 14.0.w,
                  child: Container(
                    padding: EdgeInsets.all(0.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minHeight: 15.0.h,
                      minWidth: 15.0.w,
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
      ],
    );
  }
}
