import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_google_maps.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_unit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';

class UnitSearchDetailPage extends StatelessWidget {
  const UnitSearchDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return CustomNavbar(
        text: 'Detail Unit',
        preffixWidget: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.subject_sharp,
          ),
        ),
        suffixWidget: Container(
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
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 24.h,
        ),
        child: Column(
          children: [
            Container(
              width: 380.w,
              height: 280.h,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin.w,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_car_1.png',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultRadius.w),
                  topRight: Radius.circular(defaultRadius.w),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomUnitButton(
                    width: 36.w,
                    height: 36.w,
                    margin: EdgeInsets.only(
                      right: 8.w,
                      bottom: 38.h,
                    ),
                    color: kPrimaryColor,
                    imageUrl: 'assets/image_button_fullscreen.png',
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        backgroundColor: kTransparent,
                        content: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/image_car_alert.png',
                            ),
                          ],
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomUnitButton(
                              width: 36.w,
                              height: 36.w,
                              color: kTransparent,
                              imageUrl: 'assets/image_button_close.png',
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomUnitButton(
                    width: 36.w,
                    height: 36.w,
                    margin: EdgeInsets.only(
                      right: 30.w,
                      bottom: 38.h,
                    ),
                    color: kPrimaryColor,
                    imageUrl: 'assets/image_button_pin.png',
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        content: Container(
                          child: CustomGoogleMaps(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 380.w,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin.w,
              ),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 2.w,
                    color: kDarkGreyColor,
                  ),
                  right: BorderSide(
                    width: 2.w,
                    color: kDarkGreyColor,
                  ),
                  bottom: BorderSide(
                    width: 2.w,
                    color: kDarkGreyColor,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomButtonBorder(
                    title: 'Minta ST',
                    titleColor: kDarkGreyColor,
                    onPressed: () {},
                    borderColor: kDarkGreyColor,
                    borderWidth: 2.w,
                    fontWeight: light,
                    margin: EdgeInsets.only(
                      top: 24.h,
                      left: 36.w,
                      right: 36.w,
                    ),
                  ),
                  CustomButton(
                    title: 'Proses',
                    onPressed: () {},
                    color: kPrimaryColor,
                    textStyle: blackTextStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: bold,
                    ),
                    margin: EdgeInsets.only(
                      top: 12.h,
                      left: 36.w,
                      right: 36.w,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 36.w,
                      right: 24.w,
                    ),
                    child: Text(
                      'Nomor Kontrak: 9999 9999 9999',
                      style: blackTextStyle.copyWith(
                        fontSize: 13.sp,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 36.w,
                      right: 24.w,
                    ),
                    child: Text(
                      'Nomor Polisi: AB 9999 XX',
                      style: blackTextStyle.copyWith(
                        fontSize: 13.sp,
                        fontWeight: bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 36.w,
                      right: 24.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Detail Informasi',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: bold,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Cabang Handling : Lorem ipsum',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'STNK : Thor Odinson',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Model : Supercar',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Nomor Rangka : 01234-5678-9999',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Warna : Hitam Metalik',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Tahun : 2019',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Nomor Mesin : 9898-9898-9898',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Merk : Aston Martil',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'ARH Handling : Bruce Banner',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'OD : 70',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Biaya Tarik : Rp. 10.000.000',
                          style: darkGreyTextStyle.copyWith(
                            fontSize: 13.sp,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 14.h,
                      left: 36.w,
                      right: 36.w,
                      bottom: 36.h,
                    ),
                    child: Row(
                      children: [
                        CustomButton(
                          title: 'Bagikan',
                          onPressed: () {},
                          color: kGreenColor,
                          textStyle: whiteTextStyle,
                          width: 100.w,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        CustomButton(
                          title: 'Simpan',
                          width: 100.w,
                          onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => Container(
                              child: AlertDialog(
                                titlePadding: EdgeInsets.symmetric(
                                  vertical: 24.h,
                                ),
                                title: Container(
                                  margin: EdgeInsets.only(
                                    top: 48.h,
                                  ),
                                  child: Text(
                                    'Disimpan.',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 18.sp,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                content: Text(
                                  'Data unit berhasil disimpan di menu',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 13.sp,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                actions: <Widget>[
                                  CustomButton(
                                    title: 'Ok',
                                    onPressed: () => Navigator.pop(
                                      context,
                                      'OK',
                                    ),
                                    color: kPrimaryColor,
                                    textStyle: blackTextStyle,
                                    width: 308.w,
                                    margin: EdgeInsets.only(
                                      right: 36.w,
                                      left: 36.w,
                                      bottom: 48.h,
                                    ),
                                  ),
                                ],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.r),
                                ),
                              ),
                            ),
                          ),
                          color: kGreyColor,
                          textStyle: blackTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget button() {
      return CustomButtonBorder(
        title: 'Kembali',
        titleColor: kDarkGreyColor,
        onPressed: () {},
        borderColor: kDarkGreyColor,
        borderWidth: 2.w,
        fontWeight: light,
        margin: EdgeInsets.symmetric(
          horizontal: 36.w,
          vertical: 36.w,
        ),
      );
    }

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(),
        children: [
          SafeArea(
            child: Column(
              children: [
                navbar(),
                content(),
                button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
