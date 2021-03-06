import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 45.w,
        height: 100.h,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 20.h,
                left: 36.w,
              ),
              child: ListTile(
                title: Text(
                  'Menu',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: extraBold,
                    fontSize: 18.sp,
                  ),
                ),
                onTap: () {},
              ),
            ),
            // ),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 36.w,
              ),
              child: ListTile(
                title: Text(
                  'Pencarian Unit',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14.sp,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 36.w,
              ),
              child: ListTile(
                title: Text(
                  'Buat Surat Tugas',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14.sp,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 36.w,
              ),
              child: ListTile(
                title: Text(
                  'Serah-Terima Surat Tugas',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14.sp,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 36.w,
              ),
              child: ListTile(
                title: Text(
                  'Laporan',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14.sp,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 36.w,
              ),
              child: ListTile(
                title: Text(
                  'Proses Pencarian Unit',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14.sp,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 36.w,
              ),
              child: ListTile(
                title: Text(
                  'Penarikan-Pengiriman',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14.sp,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 36.w,
              ),
              child: ListTile(
                title: Text(
                  'Input Hasil Kunjungan',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14.sp,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 36.w,
              ),
              child: ListTile(
                title: Text(
                  'Pengajuan Biaya Tarik',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14.sp,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 10.h,
                left: 36.w,
              ),
              child: ListTile(
                title: Text(
                  'Disimpan',
                  style: darkGreyTextStyle.copyWith(
                    fontWeight: bold,
                    fontSize: 14.sp,
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
