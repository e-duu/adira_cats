import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class UnitSearchNilPage extends StatelessWidget {
  const UnitSearchNilPage({Key? key}) : super(key: key);

  Widget navbar() {
    return Container(
      margin: EdgeInsets.only(
        bottom: 6.h,
      ),
      child: CustomNavbar(
        text: "Pencarian Unit",
        preffixWidget: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.subject_sharp,
          ),
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

  Widget searchUnitPhoto() {
    return Container(
      width: double.infinity,
      height: 100.h,
      padding: EdgeInsets.symmetric(
        vertical: 12.h,
        horizontal: 12.w,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Center(
                    child: Icon(
                      Icons.edit_outlined,
                      color: kBlackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget notif() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 36.h),
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
