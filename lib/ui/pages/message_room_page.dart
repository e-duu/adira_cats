import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_chat_item.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageRoomPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  // NOTE: NAVBAR
  Widget navbar() {
    return Container(
      child: CustomNavbar(
        text: "Obrolan",
        preffixWidget: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Icon(Icons.subject_sharp),
        ),
        suffixWidget: GestureDetector(
          onTap: () {},
          child: Container(
            width: 21.w,
            height: 21.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/icon_arrow_back.png",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // NOTE: USER
  Widget user() {
    return Padding(
      padding: EdgeInsets.only(
        right: defaultPadding.w,
        left: defaultPadding.w,
        top: defaultPadding.h,
      ),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                width: 56.w,
                height: 56.h,
                margin: EdgeInsets.only(
                  right: 18.w,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_cat6.png',
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Domestic',
                    style: blackTextStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Online',
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Text(
                'Anda',
                style: blackTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                width: 56.w,
                height: 56.h,
                margin: EdgeInsets.only(
                  left: 18.w,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/image_user.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        width: 300,
        height: 760,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: CustomDrawer(),
        ),
      ),
      resizeToAvoidBottomInset: false,
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: false,
      floatingActionButton: SizedBox(
        height: 470.h,
        child: CustomChatItem(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              user(),
            ],
          ),
        ),
      ),
    );
  }
}
