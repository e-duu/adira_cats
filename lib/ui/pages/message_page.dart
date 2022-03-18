import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_card_notification.dart';
import 'package:adira_cats/ui/widgets/custom_chat_tile.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Pesan",
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

    Widget search() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 24.h,
        ),
        child: CustomInputSearch(
          hintText: 'Cari Pesan atau Kontak...',
          onPressed: () {}
        ),
      );
    }

    Widget message() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          right: 36.w,
          left: 36.w,
          bottom: 116.h,
        ),
        child: Column(
          children: [
            CustomChatTile(
              count: 1,
              unread: true,
              title: 'Anggora',
              subtitle: 'Anggora: Baik, akan segera kami',
              imageUrl: 'assets/image_cat1.png',
              time: 'Baru Saja',
            ),
            CustomChatTile(
              unread: false,
              title: 'Persia',
              subtitle: 'Persia: Tadi saya lihat kucing di',
              imageUrl: 'assets/image_cat2.png',
              time: '09.21',
            ),
            CustomChatTile(
              unread: false,
              title: 'Himalayan',
              subtitle: 'Himalaya: Baik, terimakasih',
              imageUrl: 'assets/image_cat3.png',
              time: '08.56',
            ),
            CustomChatTile(
              unread: false,
              title: 'Flatnose',
              subtitle: 'Anda: Maaf, kucing saya belum',
              imageUrl: 'assets/image_cat4.png',
              time: '07.44',
            ),
            CustomChatTile(
              unread: false,
              title: 'Egyptian Mau',
              subtitle: 'Anda: Besok saya kabari',
              imageUrl: 'assets/image_cat5.png',
              time: 'Kemarin',
            ),
            CustomChatTile(
              unread: false,
              title: 'Domestic',
              subtitle: 'Anda: Siap',
              imageUrl: 'assets/image_cat6.png',
              time: 'Kemarin',
            ),
            CustomChatTile(
              unread: false,
              title: 'Sphynx',
              subtitle: 'Anda: Kerja bagus',
              imageUrl: 'assets/image_cat7.png',
              time: '2 Hari Lalu',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              search(),
              message(),
            ],
          ),
        ),
      ),
    );
  }
}
