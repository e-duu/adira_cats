import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/custom_navbar.dart';
import '../widgets/custom_upload_image.dart';

class UnitSearchPullPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  UnitSearchPullPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 24.h,
        ),
        child: CustomNavbar(
<<<<<<< HEAD
          text: "Serah Terima ST",
           preffixWidget: GestureDetector(
              onTap: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Icon(Icons.subject_sharp),
=======
          text: "Tarik Unit",
          preffixWidget: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.subject_sharp,
>>>>>>> 49c67dbb8611030ba20f0fc1ff96486542ba0eb7
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

    Widget uploadImage() {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomUploadImage(
                  hintText: 'Tambahkan\nFoto Noka / Nosin',
                  imageUrl: 'assets/icon_upload.png',
                ),
                SizedBox(
                  width: 16.w,
                ),
                CustomUploadImage(
                  hintText: 'Tambahkan\nFoto Nomor Polisi (Plat)',
                  imageUrl: 'assets/icon_upload.png',
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomUploadImage(
                  hintText: 'Tambahkan\nFoto BASTK',
                  imageUrl: 'assets/icon_upload.png',
                ),
                SizedBox(
                  width: 16.w,
                ),
                CustomUploadImage(
                  hintText: 'Tambahkan\nFoto Bagian Belakang',
                  imageUrl: 'assets/icon_upload.png',
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomUploadImage(
                  hintText: 'Tambahkan\nFoto Depan Kanan',
                  imageUrl: 'assets/icon_upload.png',
                ),
                SizedBox(
                  width: 16.w,
                ),
                CustomUploadImage(
                  hintText: 'Tambahkan\nFoto Bagian Sisi Kiri',
                  imageUrl: 'assets/icon_upload.png',
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 34.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                    title: "Batalkan",
                    titleColor: kRedColor,
                    borderColor: kRedColor,
                    borderWidth: 2,
                    fontWeight: light,
                    width: 150.w,
                    onPressed: () {}),
                SizedBox(
                  width: 12.w,
                ),
                CustomButtonBorder(
                  title: 'Simpan',
                  titleColor: kBlackColor,
                  onPressed: () {},
                  borderColor: kDarkGreyColor,
                  borderWidth: 2.r,
                  fontWeight: normal,
                  width: 152.w,
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              title: 'Lanjutkan',
              onPressed: () {},
              color: kPrimaryColor,
              textStyle: blackTextStyle,
              margin: EdgeInsets.only(
                left: 23.w,
                right: 23.w,
                bottom: defaultMargin.h,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        key: _scaffoldKey,
       
          // drawer: CustomDrawer(),
          drawer : Container(
            width: 300,
            height: 760,
            child: ClipRRect(
               borderRadius: BorderRadius.only(
          topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
              child: CustomDrawer()
              ),
          ),
              drawerEnableOpenDragGesture : true,
          endDrawerEnableOpenDragGesture: false,
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              navbar(),
              uploadImage(),
              button(),
            ],
          ),
        ),
      ),
    );
  }
}
