import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_right_chat_item.dart';
import 'package:adira_cats/ui/widgets/custom_chat_item.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageRoomPage extends StatelessWidget {
  @override
  // NOTE: NAVBAR
  Widget navbar() {
    return Container(
      child: CustomNavbar(
        text: "Obrolan",
        preffixWidget: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.subject_sharp,
          ),
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
        right: 24.w,
        left: 24.w,
        top: 24.h,
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

  // NOTE: CHAT
  Widget chat() {
    return Container(
      margin: EdgeInsets.only(
        bottom: 150.h,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 18.h,
            ),
            child: Text(
              'Kemarin',
              style: darkGreyTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 13.sp,
              ),
            ),
          ),
          CustomChatItem(
            chat: 'Pak saya izin telat karena mungut kucing di jalan',
            time: '06.21',
            read: false,
            auth: false,
          ),
          CustomChatItem(
            chat: 'Berapa ekor yang kamu pungut?',
            time: '06.25',
            read: false,
            auth: true,
          ),
          CustomChatItem(
            chat: '5 ekor udah sama induknya 👍',
            time: '06.27',
            read: false,
            auth: false,
          ),
          CustomChatItem(
            chat: 'Ini saya langsung belikan whiskas',
            time: '06.27',
            read: false,
            auth: false,
          ),
          CustomChatItem(
            chat: 'Siap',
            time: '06.31',
            read: false,
            auth: true,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 18.h,
            ),
            child: Text(
              'Hari Ini',
              style: darkGreyTextStyle.copyWith(
                fontWeight: semibold,
                fontSize: 13.sp,
              ),
            ),
          ),
          CustomChatItem(
            chat: 'Lah memang kamu punya duit buat beli whiskas?',
            time: '05.48',
            read: true,
            auth: true,
          ),
        ],
      ),
    );
  }

  // NOTE: CHAT INPUT
  Widget chatInput() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      child: Row(
        children: [
          Container(
            width: 252.w,
            height: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: kWhiteColor,
            ),
            child: TextFormField(
              autocorrect: true,
              autofocus: false,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 18.w,
                  vertical: 15.h,
                ),
                hintText: 'Mulai obrolan ...',
                prefixIcon: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 22.w,
                      margin: EdgeInsets.only(right: 4.w, left: 8.w),
                      child: IconButton(
                        onPressed: () {},
                        hoverColor: kTransparent,
                        focusColor: kTransparent,
                        highlightColor: kTransparent,
                        icon: Icon(Icons.mic_none_sharp),
                      ),
                    ),
                    Container(
                      width: 22.w,
                      margin: EdgeInsets.only(
                        right: 20.w,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        hoverColor: kTransparent,
                        focusColor: kTransparent,
                        highlightColor: kTransparent,
                        icon: Icon(Icons.tag_faces_sharp),
                      ),
                    ),
                  ],
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius.r),
                  borderSide: BorderSide(
                    color: kLigthGrayColor,
                    width: 2.r,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius.r),
                  borderSide: BorderSide(
                    color: kDarkGreyColor,
                    width: 2.w,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 12.w,
          ),
          Container(
            width: 48.w,
            height: 48.h,
            margin: EdgeInsets.only(
              top: 2.h,
            ),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
              ),
              child: Icon(
                Icons.send,
                color: kBlackColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              user(),
              chat(),
            ],
          ),
        ),
      ),
    );
  }
}
