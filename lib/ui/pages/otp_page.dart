import 'package:adira_cats/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:sms_autofill/sms_autofill.dart';

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

    // Widget otp(){
    //       String _code="";

    //   return Container(
    //     child: Padding(
    //       padding:EdgeInsets.symmetric(horizontal: 50, vertical:10),
          
    //       child: Container(
            
    //         child: PinFieldAutoFill(
    //            decoration: UnderlineDecoration(
    //                 textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: bold,),
    //                 colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
    //               ),
    //                currentCode: _code,
    //               onCodeSubmitted: (code) {},
    //               onCodeChanged: (code) {
    //                 if (code!.length == 6) {
    //                   FocusScope.of(context).requestFocus(FocusNode());
    //                 }
    //               },
    //               // currentCode: // prefill with a code
    //               // onCodeSubmitted: //code submitted callback
    //               // onCodeChanged: //code changed callback
    //               codeLength: 6,
    //         ),
    //       ),
          
    //     ),
        
        
    //   );
    // }

    Widget otpEmail(){
      String _code="";

      return Container(
        child:Column(
          children: [

            Text(
              'OTP Email',
              // style: gra,
              ),
            
      
            PinFieldAutoFill(
              
              decoration: UnderlineDecoration(
              textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: bold,),
              colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
              ),
              currentCode: _code,
              onCodeSubmitted: (code) {},
              onCodeChanged: (code) {
                if (code!.length == 6) {
                  FocusScope.of(context).requestFocus(FocusNode());
                }
              },
            ),
           
          ],
         
        )
      );
    }
    
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Center(
          child: ListView(
          
            children: [
            logo(),
            title(),
            otpEmail(),
            coba(),
            
        
            
            
             
            ],
            
          ),
        ),
      )
    );
  }
}