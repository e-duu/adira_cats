import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_text_informasi_detail.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class HandoverSkConfirmedPage extends StatelessWidget {
  const HandoverSkConfirmedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Serah Terima SK",
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

    Widget cardSkDetail() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 24.h,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kLigthGrayColor,
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: 60.h,
              margin: EdgeInsets.only(
                top: 43.h,
                bottom: 31.h,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_number_sk_detail.png",
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 36.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nomor SK : 1234 5678",
                        style: blackTextStyle.copyWith(
                          fontSize: 13.sp,
                          fontWeight: bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Text(
                        "Nomor Kontrak : 9999 9999 9999",
                        style: blackTextStyle.copyWith(
                          fontSize: 13.sp,
                          fontWeight: bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        "Detail Informasi",
                        style: darkGreyTextStyle.copyWith(
                          fontSize: 13.sp,
                          fontWeight: semibold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Cabang Handling',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Overdue',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Nomor Rangka',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Nomor Mesin',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Nama STNK',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Model',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Merk',
                        text: 'Yamahmud',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Warna',
                        text: 'Hitam Metalik',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Tahun',
                        text: '1998',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Notes',
                        text: 'Lorem Ipsum',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Waktu Dibuat',
                        text: '1 Januari 2022',
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      CustomTextInformasiDetail(
                        title: 'Waktu Diperbaharui',
                        text: '2 Januari 2022',
                      ),
                    ],
                  )
                ],
              ),
            ),

            /// NOTE: NOTIF CONFIRMED SK
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 24.h,
              ),
              child: Text(
                "SK telah dikonfirmasi pada 10 maret 2022",
                style: darkGreyTextStyle.copyWith(
                  fontWeight: light,
                  fontSize: 12.sp,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                bottom: 36.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  /// NOTE: CETAK SK
                  Container(
                    width: 94.w,
                    height: 68.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kLigthGrayColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    child: Center(
                      child: Text(
                        "Cetak SK",
                        style: darkGreyTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 12.sp,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  /// NOTE: CETAK BASTK
                  Container(
                    width: 94.w,
                    height: 68.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kLigthGrayColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    child: Center(
                      child: Text(
                        "Cetak\nBASTK",
                        style: darkGreyTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 12.sp,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  /// NOTE: CETAK HisPay
                  Container(
                    width: 94.w,
                    height: 68.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kLigthGrayColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    child: Center(
                      child: Text(
                        "Buat\nHisPay",
                        style: darkGreyTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 12.sp,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget buttonBack() {
      return Container(
        child: CustomButtonBorder(
          title: "Kembali",
          margin: EdgeInsets.only(
            top: 68.h,
            bottom: 36.h,
            left: 36.w,
            right: 36.w,
          ),
          titleColor: kDarkGreyColor,
          borderColor: kDarkGreyColor,
          borderWidth: 2,
          fontWeight: light,
          onPressed: () {},
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                navbar(),
                cardSkDetail(),
                buttonBack(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
