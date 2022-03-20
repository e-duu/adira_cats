import 'package:adira_cats/cubit/page_cubit.dart';
import 'package:adira_cats/ui/widgets/custom_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final bool isNotif;
  final int number;

  const CustomBottomNavigationItem({
    Key? key,
    this.isSelected = false,
    required this.icon,
    this.isNotif = false,
    this.number = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
                icon,
                color: kLigthGrayColor,
                size: 28.sp,
              ),
              if (isNotif == true)
                CustomNotificationItem(
                  count: number,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
