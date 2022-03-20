import 'package:adira_cats/cubit/page_cubit.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/home_page.dart';
import 'package:adira_cats/ui/pages/message_page.dart';
import 'package:adira_cats/ui/pages/notification_page.dart';
import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/pages/unit_search.dart';
import 'package:adira_cats/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return MessagePage();
        case 1:
          return UnitSearchPage();
        case 2:
          return HomePage();
        case 3:
          return NotificationPage();
        case 4:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 100.h,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24.r),
              topLeft: Radius.circular(24.r),
            ),
            boxShadow: [
              BoxShadow(
                color: kLigthGrayColor.withOpacity(1),
                spreadRadius: 3,
                blurRadius: 18.r,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // NOTE: ICON CHAT
                  CustomBottomNavigationItem(
                    index: 0,
                    icon: Icons.message,
                    isNotif: true,
                    number: 15,
                  ),

                  // NOTE: ICON LOCATION
                  CustomBottomNavigationItem(
                    index: 1,
                    icon: Icons.location_on,
                  ),

                  // NOTE: ICON HOME
                  CustomBottomNavigationItem(
                    index: 2,
                    icon: Icons.home,
                  ),

                  // NOTE: ICON NOTIFICATION
                  CustomBottomNavigationItem(
                    index: 3,
                    icon: Icons.notifications,
                    isNotif: true,
                    number: 99,
                  ),

                  // NOTE: ICON PROFILE
                  CustomBottomNavigationItem(
                    index: 4,
                    icon: Icons.person,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButton: bottomNavigation(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          backgroundColor: kWhiteColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              bottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
