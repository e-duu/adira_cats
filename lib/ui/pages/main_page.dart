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

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            left: 48,
            right: 48,
            bottom: 30,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // CustomBottomNavigationItem(
              //   index: 0,
              //   imageUrl: 'assets/icon_chat_button.png',
              // ),
              // CustomBottomNavigationItem(
              //   index: 1,
              //   imageUrl: 'assets/icon_location_button.png',
              // ),
              // CustomBottomNavigationItem(
              //   index: 2,
              //   imageUrl: 'assets/icon_home_button.png',
              // ),
              // CustomBottomNavigationItem(
              //   index: 3,
              //   imageUrl: 'assets/icon_notification.png',
              // ),
              // CustomBottomNavigationItem(
              //   index: 4,
              //   imageUrl: 'assets/icon_user_button.png',
              // ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kWhiteColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
