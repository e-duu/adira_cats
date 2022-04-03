import 'package:adira_cats/ui/pages/home_page.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adira_cats/shared/theme.dart';

class CheckUnitWarehouse extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  CheckUnitWarehouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget navbar() {
      return CustomNavbar(
        text: 'Tarik Kirim Unit - WH',
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
      );
    }

    Widget input() {
     

      Widget remote() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kode Remot',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomInput(
                hintText: 'Tambahkan keterangan ...',
                hintColor: kBlackColor,
              ),
            ],
          ),
        );
      }

     
      
      Widget brandCondition() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kondisi Merek',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomInput(
                hintText: 'Tambahkan keterangan ...',
                hintColor: kDarkGreyColor,
                readOnly: true,
              ),
            ],
          ),
        );
      }

      Widget brandParam() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Merek Param',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomInput(
                hintText: 'Tambahkan keterangan ...',
                hintColor: kDarkGreyColor,
              ),
            ],
          ),
        );
      }

      Widget remoteName() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Remot',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomInput(
                hintText: 'Tambahkan keterangan ...',
                hintColor: kDarkGreyColor,
              ),
            ],
          ),
        );
      }
      Widget warehouseName() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Warehouse',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomInput(
                hintText: 'Tambahkan keterangan ...',
                hintColor: kDarkGreyColor,
              ),
            ],
          ),
        );
      }

      Widget numberCondition() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kondisi Nomor Mesin',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomInput(
                hintText: 'Tambahkan keterangan ...',
                hintColor: kDarkGreyColor,
              ),
            ],
          ),
        );
      }

      Widget mechineNumber() {
        return Container(
          margin: EdgeInsets.only(
            top: defaultPadding.h,
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nomor Mesin Param',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomInput(
                hintText: 'Tambahkan keterangan ...',
                hintColor: kDarkGreyColor,
              ),
            ],
          ),
        );
      }

     

      

      return Container(
        margin: EdgeInsets.only(
          top: defaultPadding.h,
        ),
        child: Column(
          children: [
            remote(),
            brandCondition(),
            brandParam(),
            remoteName(),
            warehouseName(),
            numberCondition(),
            mechineNumber(),
           
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        child: Column(
          children: [
            SizedBox(
              height: 34.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButtonBorder(
                  titleColor: kRedColor,
                  title: 'Batal',
                  onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => Container(
                      child: AlertDialog(
                        titlePadding: EdgeInsets.symmetric(
                          vertical: defaultPadding.h,
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
                          'Anda yakin ingin membatalkan?',
                          style: blackTextStyle.copyWith(
                            fontSize: 13.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        actions: <Widget>[
                          CustomButtonBorder(
                            titleColor: kRedColor,
                            title: 'Batalkan',
                            onPressed: () {},
                            borderColor: kRedColor,
                            borderWidth: 2.w,
                            fontWeight: normal,
                            width: 308.w,
                            margin: EdgeInsets.only(
                              right: defaultMargin.w,
                              left: defaultMargin.w,
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          CustomButton(
                            title: 'Lanjutkan',
                            onPressed: () => Navigator.pop(context, 'OK'),
                            color: kPrimaryColor,
                            textStyle: blackTextStyle,
                            width: 308.w,
                            margin: EdgeInsets.only(
                              right: defaultMargin.w,
                              left: defaultMargin.w,
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
                  borderColor: kRedColor,
                  borderWidth: 2,
                  fontWeight: normal,
                  width: 154.w,
                ),
                SizedBox(
                  width: 12.w,
                ),
                CustomButtonBorder(
                  titleColor: kDarkGreyColor,
                  title: 'Reset',
                  onPressed: () {},
                  borderColor: kDarkGreyColor,
                  borderWidth: 2,
                  fontWeight: normal,
                  width: 154.w,
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
                bottom: defaultMargin.h,
                right: 19.w,
                left: 19.w,
              ),
            ),
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
            bottomRight: Radius.circular(35),
          ),
          child: CustomDrawer()
          ),
        ),
      drawerEnableOpenDragGesture : true,
      endDrawerEnableOpenDragGesture: false,
      backgroundColor: kWhiteColor,
      body: ListView(
        padding: EdgeInsets.symmetric(),
        children: [
          SafeArea(
            child: Column(
              children: [
                navbar(),
                input(),
                button(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
