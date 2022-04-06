import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class UnitSearchNilPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  UnitSearchNilPage({ Key? key }) : super(key: key);

  Widget navbar() {
    return Container(
      margin: EdgeInsets.only(
        bottom: 6.h,
      ),
      child: CustomNavbar(
        
        text: "Pencarian Unit",
        preffixWidget: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(Icons.subject_sharp),
        ),
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

  Widget formSearch() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 18.h,
      ),
      child: CustomInputSearch(
        margin: EdgeInsets.all(1),
        hintText: 'Cari Unit menggunakan Nomor Kontrak ...',
        onPressed: () {},
      ),
    );
  }

  Widget searchUnitPhoto(){
    return Container(
      margin: EdgeInsets.only(
        top: 12.h,
      ),
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            title: "Cari Lewat ST",
            onPressed: (){},
            color: kPrimaryColor,
            textStyle: blackTextStyle,
            width: 138.w,
          ),
          SizedBox(
            width: 12.w,
          ),
          CustomButton(
            title: "Scan Foto Plat",
            onPressed: (){},
            color: kPrimaryColor,
            textStyle: blackTextStyle,
            width: 138.w,
          ),
        ],
      ),
    );
  }

  Widget resultUnitSearch() {
    return Container(
      width: double.infinity,
      height: 240.h,
      margin: EdgeInsets.only(
        top: defaultPadding.h,
      ),
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(defaultRadius),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/image_car_3.png",
          ),
        ),
      ),
    );
  }

  Widget notif() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 36.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Unit tidak ditemukan.",
            style: darkGreyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 13.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    formSearch(),
                    searchUnitPhoto(),
                    resultUnitSearch(),
                    notif(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
