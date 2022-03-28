import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ReportDetailPullFeeResultDetailPage extends StatelessWidget {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    ReportDetailPullFeeResultDetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget navbar() {
      return Container(
        child: CustomNavbar(
          text: "Detail Biaya Tarik",
          preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.subject_sharp),
          ),
          suffixWidget: GestureDetector(
            onTap: () {},
            child: Container(
              width: 27.w,
              height: 26.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_arrow_back.png",
                  )
                )
              )
            )
          )
        ),
      );
    }

    Widget box(){

      Widget icon(){
        return Center(
          child: Container(
            width: 57.w,
            height: 51.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_biaya_tarik.png',
                )
              )
            ),
          ),
        );
      }

      Widget externalName(){
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nomor Kontrak : 121212',
                style: blackTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: bold,
                ),
              ),
              SizedBox(height: 12.h,),
              Text(
                'Detail Informasi',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(height: 8.h,),
              Text(
                'Nama Nasabah : Stephen Strange',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(height: 8.h,),
              Text(
                'Nilai Bruto Payment/Repo Fee : Rp. 5.000.000',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(height: 8.h,),
              Text(
                'Tanggal Pembayaran Fee : 28 Februari 2022',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
              SizedBox(height: 8.h,),
              Text(
                'Nomor Workflow : 123456',
                style: darkGreyTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: light,
                ),
              ),
            ],
          ),
        );
      }
      
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 24.h,
          horizontal: 24.w,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 36.h,
          horizontal: 36.w,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kLigthGrayColor,
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon(),
            SizedBox(height: 34.h,),
            externalName(),
          ],
        )
      );
    }

    
    Widget button() {
      return Container(
        margin: EdgeInsets.only(
          left: 36.w,
          right: 36.w,
          top: 100.h,
          bottom: 36.h,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonBorder(
              title: 'Kembali', 
              titleColor: kDarkGreyColor, 
              onPressed: (){}, 
              borderColor: kDarkGreyColor, 
              borderWidth: 2.w, 
              fontWeight: light,
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
          topRight: Radius.circular(35), bottomRight: Radius.circular(35)),
              child: CustomDrawer()
              ),
          ),
                drawerEnableOpenDragGesture : true,
          endDrawerEnableOpenDragGesture: false,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                navbar(),
                box(),
                button(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
