import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_card_notification.dart';
import 'package:adira_cats/ui/widgets/custom_chat_tile.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageRoomPage extends StatelessWidget {
  @override
  Widget navbar() {
    return Container(
      child: CustomNavbar(
        text: "Obrolan",
        preffixWidget: IconButton(onPressed: () => {}, icon: libraryIcon),
        suffixWidget: Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                "assets/image_user.png",
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
            ],
          ),
        ),
      ),
    );
  }
}