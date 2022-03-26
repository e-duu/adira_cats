import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/custom_dialog.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown.dart';
import 'package:adira_cats/ui/widgets/custom_dropdown_border.dart';
import 'package:adira_cats/ui/widgets/custom_icon_upload.dart';
import 'package:adira_cats/ui/widgets/custom_input.dart';
import 'package:adira_cats/ui/widgets/custom_logo_adira.dart';
import 'package:adira_cats/ui/widgets/custom_menu.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:adira_cats/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dropdown_search/dropdown_search.dart';

class TestingPage extends StatelessWidget {
  const TestingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              // NOTE: CUSTOM NAVBAR
              // CustomNavbar(
              //   preffixWidget: IconButton(
              //     onPressed: () => {},
              //     icon: Icon(Icons.subject_sharp)
              //   ),
              //   text: "Pencarian Unit",
              //   suffixWidget: Container(
              //     width: 48,
              //     height: 48,
              //     decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       image: DecorationImage(
              //         fit: BoxFit.cover,
              //         image: AssetImage(
              //           "assets/image_user.png",
              //         )
              //       )
              //     ),
              //   ),
              // ),

              // NOTE: CUSTOM MENU
              // CustomMenu(
              //   imageUrl: "icon_menu1.png",
              //   text: "Pencarian Unit",
              //   padding: EdgeInsets.only(
              //     top: 26,
              //     bottom: 19,
              //     right: 18,
              //     left: 17
              //   ),
              //   onTap: () => {},
              // ),

              // NOTE: CUSTOM BUTTON
              // CustomButton(title: "Ok", onPressed: () {}, color: kDarkGreyColor, fontWeight: FontWeight.bold)

              // NOTE: CUSTOM INPUT
              // CustomInput(
              //   hintText: "Password",
              //   hintColor: kDarkGreyColor,
              //   padding: EdgeInsets.only(top: 5),
              //   margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              //   obscureText: true,
              // ),

              // SizedBox(
              //   height: 10,
              // ),

              // CustomLogoAdira(text: "Daftar Sebagai Informan")

              // NOTE: CUSTOM ICON UPLOAD
              // CustomIconUpload(text: 'Tambahkan\nFoto KTP'),
              // SizedBox(
              //   width: 16,
              // ),
              // CustomIconUpload(text: "Tambahkan\nFoto Diri"),

              // NOTE: DIALOG
              // TextButton(
              //   onPressed: () => CustomDialog(
              //     title: "Batalkan?",
              //     text: "Anda Ingin Membatalkan?",
              //     context: context,
              //     preffixAction: CustomButtonBorder(
              //       title: "Batalkan",
              //       titleColor: kRedColor,
              //       onPressed: () => {},
              //       borderColor: kRedColor,
              //       borderWidth: 2,
              //       fontWeight: light,
              //     ),
              //     suffixAction: CustomButton(
              //       title: "Tetap Edit",
              //       onPressed: () => {},
              //       color: kPrimaryColor,
              //       textStyle: blackTextStyle,
              //     ),
              //   ),
              //   child: Text(
              //     'Coba Dialog',
              //     style: blackTextStyle.copyWith(
              //       fontSize: 14,
              //       fontWeight: bold,
              //     ),
              //   ),
              // ),

              // NOTE : CUSTOM DROPDOWN
              // CustomDropdownBorder(
              //   items: ['item 1', 'item 2', 'item 3'],
              //   hintText: 'Pilih Data...',
              //   margin: EdgeInsets.all(100),
              //   // width: 200.w,
              // ),

              // NOTE : DROPDOWN SEARCH
              // DropdownSearch<String>(
              //   mode: Mode.MENU,
              //   showSearchBox: true,
              //   hint: 'Pilih Bank',
              //   showClearButton: true,
              //   items: [
              //     "BANK BRI",
              //     'BANK BNI',
              //     "BANK BCA",
              //     "BANK JAGO",
              //     "BANK MANDIRI",
              //     "BANK PERMATA",
              //   ],
              //   onChanged: print,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
