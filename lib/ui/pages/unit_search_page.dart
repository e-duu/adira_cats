import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_input_search_multi.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class UnitSearchPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  UnitSearchPage({Key? key}) : super(key: key);

  Widget navbar(BuildContext context) {
    return Container(
      child: CustomNavbar(
        text: "Pencarian Unit",
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

  Widget formSearch() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 18.h,
      ),
      child: CustomInputSearchMulti(),
    );
  }

  Widget searchUnitPhoto() {
    return Container(
      margin: EdgeInsets.only(
        top: 12.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: CustomButton(
        title: "Scan Foto Plat",
        onPressed: () {},
        color: kPrimaryColor,
        textStyle: blackTextStyle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        width: 300,
        height: 760,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: CustomDrawer(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(context),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    formSearch(),
                    searchUnitPhoto(),
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
