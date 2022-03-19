import 'package:flutter/material.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChatTile extends StatelessWidget {
  final String title; 
  final String subtitle; 
  final String imageUrl; 
  final String time; 
  final bool unread;
  final int count;

  const CustomChatTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl, 
    required this.time, 
    this.count = 0, 
    this.unread = true, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 18.h,
      ),
      child: Row(
        children: [
          Container(
            width: 56.w,
            height: 56.h,
            margin: EdgeInsets.only(
              right: 22.w,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (unread == true) Container(
                      width: 21,
                      height: 21,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryColor,
                      ),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            count.toString(),
                            style: blackTextStyle.copyWith(
                              fontSize: 11.sp,
                              fontWeight: semibold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackTextStyle.copyWith(
                    fontSize: 12.sp,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: unread
                    ? darkGreyTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 11.sp,
                      )
                    : darkGreyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 11.sp,
                      ),
                  overflow: TextOverflow.ellipsis,
                ), 
              ],
            ),
          ),
          SizedBox(
            width: 22.w,
          ),
          Text(
              time,
              style: unread
                ? blackTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 11.sp,
                  )
                : blackTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 11.sp,
                  ),
          ),
        ],
      ),
    );
  }
}