import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/profile_page.dart';
import 'package:adira_cats/ui/widgets/custom_input_search.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class UnitSearchPage extends StatelessWidget {
  const UnitSearchPage({Key? key}) : super(key: key);

  Widget navbar(BuildContext context) {
    return Container(
      child: CustomNavbar(
        text: "Pesan",
        preffixWidget: IconButton(
          onPressed: () => {},
          icon: libraryIcon,
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
      child: CustomInputSearch(
        onPressed: () {},
        margin: EdgeInsets.all(1),
        hintText: 'Cari Unit menggunakan Nomor Kontrak ...',
      ),
    );
  }

  Widget searchUnitPhoto() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: defaultPadding.h,
      ),
      decoration: BoxDecoration(
        color: kGreyColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50.w,
            height: 50.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/icon_upload.png",
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          Text(
            "Cari Unit menggunakan\nFoto/Scan Plat Nomor",
            style: darkGreyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 12.sp,
            ),
            overflow: TextOverflow.ellipsis,
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
    ));
  }
}