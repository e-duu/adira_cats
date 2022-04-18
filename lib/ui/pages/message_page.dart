import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/widgets/custom_chat_tile.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessagePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Pesan",
          preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.subject_sharp),
          ),
          suffixWidget: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
            child: Container(
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
        ),
      );
    }

    Widget search() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: defaultPadding.h,
        ),
        child: CustomInputSearch(
            hintText: 'Cari Pesan atau Kontak...', onPressed: () {}),
      );
    }

    Widget message() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          right: defaultPadding.w,
          left: defaultPadding.w,
          bottom: defaultBottom.h,
        ),
        child: Column(
          children: [
            CustomChatTile(
              number: 99,
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
      key: _scaffoldKey,
      drawer: Container(
        width: 300.w,
        height: 760.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: CustomDrawer(),
        ),
      ),
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: false,
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
