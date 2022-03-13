import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Widget logo(){
      return Container(
            width: 200,
            height: 34,
            margin: EdgeInsets.only(top:70),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                'assets/adira_logo_yellow.png'
                ),
              ),
            ),
      );
    }

    /// Widget Title
    Widget title(){
        return Container(
          margin: EdgeInsets.only(top:49),
          child: Column(
            children:[
              Text(
                'Verifikasi',
                style: blackTextStyle.copyWith(
                fontSize: 18, 
                fontWeight: bold,
                ),
              ),
              SizedBox(height: 24,),
              Text(
                'Masukkan kode OTP yang Anda terima dari kami.',
                style: blackTextStyle.copyWith(
                fontSize: 14, 
                fontWeight: light,
                ),
              ),
            ],
          ),
          );
        }
    
    Widget coba(){
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Belum menerima kode?',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight:light,
              )
            ),
            SizedBox(width: 2,),
            Text(
              'Kirim ulang',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight:bold,
              )
              
            )
          ],
        ),
      );
    }

    // Widget Otp(){
    //   return Scaffold(
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           Text('Masukan OTP'),
    //           Container(
    //             padding: EdgeInsets.symmetric(horizontal: 50),
    //             child: PinFieldAutofill(

    //             ),
    //           ),
    //         ],
    //       )
    //     ),
    //   );
    // }
    
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Center(
          child: ListView(
          
            children: [
            logo(),
            title(),
            coba(),
            
        
            
            
             
            ],
            
          ),
        ),
      )
    );
  }
}