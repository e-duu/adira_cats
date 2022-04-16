import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class RequestUnitPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  RequestUnitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Minta Surat Tugas",
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

    Widget cardSt() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultPadding.w,
          vertical: defaultPadding.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kLigthGrayColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 280.h,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image_car_1.png",
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding.w,
                vertical: defaultPadding.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nomor Kontrak : 9999 9999 9999",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Nomor Polisi : AB 9999 XX",
                    style: blackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),

                  // NOTE: DETAIL INFORMASI
                  Text(
                    "Detail Informasi",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    "Cabang Handling : Lorem ipsum",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "STNK : Thar Odinson",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Model : Supercar",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Nomor Rangka : 01234-5678-9999",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Warna : Hitam Metalik",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Tahun : 2019",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Nomor Mesin : 9898-9898-9898",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Merk : Aston Martil",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "ARH Handling : Bruce Banner",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "OD : 70",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Biaya Tarik : Rp. 10.000.000",
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget formCreateNote() {
      return Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: defaultMargin.h,
          horizontal: defaultMargin.w,
        ),
        child: Column(
          children: [
            CustomInput(
              hintText: "Tambahkan Catatan ...",
              hintColor: kDarkGreyColor,
            ),
            SizedBox(
              height: defaultMargin.h,
            ),
            CustomButtonBorder(
              title: "Batalkan",
              titleColor: kRedColor,
              borderColor: kRedColor,
              borderWidth: 2,
              fontWeight: light,
              width: double.infinity,
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: 48.h,
                  ),
                  child: AlertDialog(
                    titlePadding: EdgeInsets.only(
                      top: 10.h,
                    ),
                    title: Container(
                      margin: EdgeInsets.only(
                        top: 48.h,
                      ),
                      child: Text(
                        'Batalkan?',
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 18.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    content: Text(
                      "Anda yakin akan membatalkan?",
                      style: blackTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    actions: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          bottom: defaultPadding.h,
                          right: defaultPadding.w,
                          left: defaultPadding.w,
                        ),
                        child: Column(
                          children: [
                            CustomButtonBorder(
                              title: 'Batalkan',
                              titleColor: kRedColor,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              borderColor: kRedColor,
                              borderWidth: 2,
                              fontWeight: light,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            CustomButton(
                              title: 'Lanjutkan',
                              onPressed: () {},
                              color: kPrimaryColor,
                              textStyle: blackTextStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                    actionsPadding: EdgeInsets.only(
                      bottom: 10.h,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        18.r,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButton(
              title: "Submit",
              color: kPrimaryColor,
              textStyle: blackTextStyle,
              onPressed: () {},
            )
          ],
        ),
      );
    }

    return Scaffold(
      key: _scaffoldKey,
        drawer : Container(
        width: 300,
        height: 760,
        child: ClipRRect(
        borderRadius: BorderRadius.only(
         topRight: Radius.circular(35),
         bottomRight: Radius.circular(35)
        ),
        child: CustomDrawer()
        ),
      ),
      drawerEnableOpenDragGesture : true,
      endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              cardSt(),
              formCreateNote(),
            ],
          ),
        ),
      ),
    );
  }
}
