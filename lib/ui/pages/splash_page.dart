// import 'package:adira_cats/shared/theme.dart';
// import 'package:flutter/material.dart';

// class SplashPage extends StatelessWidget {
//   const SplashPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       body: Stack(
//         children: [
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 240,
//                   height: 42,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/adira_logo_white.png'),
//                     ),
//                   ),
//                 ),
//                 // Column(
//                 //   mainAxisAlignment: MainAxisAlignment.end,
//                 //   children: [
//                 //     Text(
//                 //       'CATS',
//                 //       style: blackTextStyle.copyWith(
//                 //         fontWeight: bold,
//                 //       ),
//                 //     ),
//                 //     Text(
//                 //       'Collection Activity and Tracking System',
//                 //       style: blackTextStyle,
//                 //     ),
//                 //   ],
//                 // ),
//                 Transform.translate(
//                   offset: Offset(0, 232),
//                   child: Column(
//                     children: [
//                       Text(
//                         'CATS',
//                         style: blackTextStyle.copyWith(
//                           fontWeight: bold,
//                         ),
//                       ),
//                       Text(
//                         'Collection Activity and Tracking System',
//                         style: blackTextStyle,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 240,
                  height: 45,
                  alignment: Alignment.center,
                  child: Image.asset('assets/adira_logo_white.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 72),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "CATS",
                      style: blackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Collection Activity and Tracking System",
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
