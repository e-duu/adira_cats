import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavbar extends StatelessWidget {
  // final String text;
  // final Widget preffixWidget;
  // final Widget suffixWidget;

  const CustomNavbar({
    Key? key,
    // required this.text,
    // required this.preffixWidget,
    // required this.suffixWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        backgroundColor: kPrimaryColor,
        title: Text('Pencarian Unit'),
        // leading: Drawer(
          
        //   child: ListView(
        //    children: [
        //      ListTile(
        //        title: Text("Pencarian Unit"),
        //      ),
        //      ListTile(
        //        title: Text("Buat Surat Tugas"),
        //      ),
        //      ListTile(
        //        title: Text("Serah-Terima Surat Tugas"),
        //      ),
        //      ListTile(
        //        title: Text("Laporan"),
        //      ),
        //      ListTile(
        //        title: Text("Proses Pencarian Unit"),
        //      ),
        //      ListTile(
        //        title: Text("Penarikan-Pengiriman"),
        //      ),
        //      ListTile(
        //        title: Text("Input Hasil Kunjungan"),
        //      ),
        //      ListTile(
        //        title: Text("Pengajuan Biaya Tarik"),
        //      ),
        //      ListTile(
        //        title: Text("Disimpan"),
        //      ),
        //    ],
        //   ),
        // ),
         ),
      
         
    drawer: Drawer(
      child: ListView(
      padding: EdgeInsets.zero,
      children: const <Widget>[
      DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text('Messages'),
      ),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text('Profile'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
      ),
    ],
  ),
    ), 


     
        // actions: <Widget>[
        //    IconButton(
        //     icon: const Icon(Icons.shopping_cart),
        //     // tooltip: 'Open shopping cart',
        //     onPressed: () {
        //       // handle the press
        //     },
        //   ),
        // ],
     
    );
    // return Container(
    //   width: double.infinity,
    //   height: 114.h,
    //   padding: EdgeInsets.only(
    //     bottom: 30.h,
    //     top: defaultMargin.h,
    //     left: defaultMargin.w,
    //     right: defaultMargin.w,
    //   ),
    //   decoration: BoxDecoration(
    //     color: kPrimaryColor,
    //     borderRadius: BorderRadius.only(
    //       bottomLeft: Radius.circular(18.r),
    //       bottomRight: Radius.circular(18.r),
    //     ),
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       preffixWidget,
    //       Text(
    //         text,
    //         style: blackTextStyle.copyWith(
    //           fontSize: 18.sp,
    //           fontWeight: bold,
    //         ),
    //         overflow: TextOverflow.ellipsis,
    //       ),
    //       suffixWidget
    //     ],
    //   ),
    // );
  }
}
