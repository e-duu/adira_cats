import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:video_player/video_player.dart';
 
class AnnouncementDetailPage extends StatefulWidget {
  AnnouncementDetailPage() : super();
 
  // final String title = "Video Demo";
 
  @override
  AnnouncementDetailPageState createState() => AnnouncementDetailPageState();
}
 
class AnnouncementDetailPageState extends State<AnnouncementDetailPage> {
  // const AnnouncementDetailPageState({Key? key}) : super(key: key);

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
 
  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
 
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              navbar(),
              FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Center(
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                  );
                }
              },
            ),
              content(),
              button(),
            ],
          ),
        ),
     ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child:
            Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}



// class AnnouncementDetailPage extends StatelessWidget {
//   const AnnouncementDetailPage({Key? key}) : super(key: key);

//  

  Widget content() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultPadding.w,
        vertical: 24,
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(
              "Mobile App Adira Finance CATS Terbaru Akan Segera Hadir!",
              style: blackTextStyle.copyWith(
                fontWeight: extraBold,
                fontSize: 18.sp,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "1 Maret 2022 | Oleh Admin",
              style: darkGreyTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 12.sp,
              ),
            ),
          ),
          ListTile(
            title: Text(
              '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Bibendum faucibus imperdiet et nam arcu eu tellus. Vel amet rutrum aliquam faucibus egestas elementum. Ipsum eu viverra sed leo eget egestas lacus, interdum pretium. Massa in ullamcorper arcu praesent convallis malesuada pharetra ut massa. Lectus nunc dignissim turpis sit nunc, pellentesque mi, feugiat. Malesuada ornare sed purus integer. Auctor pretium commodo amet mollis. Placerat egestas eget porta id orci mi erat eu. Enim mauris, vitae etiam arcu ac nam gravida amet tellus.''',
              style: darkGreyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 14.sp,
              ),
            ),
          ),
          ListTile(
            title: Text(
              '''Quam lectus ac faucibus aliquam enim morbi. Aliquam cras scelerisque sit diam nunc diam imperdiet. Hendrerit lectus viverra ac et fringilla purus sapien diam. Rhoncus feugiat at nunc massa. Aliquam molestie leo morbi consequat, volutpat, odio semper aliquet tincidunt.''',
              style: darkGreyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget button() {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin.w,
        right: defaultMargin.w,
        top: defaultMargin.h,
        bottom: defaultMargin.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButtonBorder(
            title: 'Kembali',
            titleColor: kDarkGreyColor,
            onPressed: () {},
            borderColor: kDarkGreyColor,
            borderWidth: 2,
            fontWeight: light,
          ),
        ],
      ),
    );
  }

  Widget navbar(){
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 18.w,
        vertical: 40,
      ),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            
            child: Text(
              'Penguguman',style: blackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16.sp,
              ),
            )
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
             
              width: 21.w,
              height: 21.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_arrow_back.png",
                  ),
                ),
              ),
            ),
            ),
         
        ],
      ),
    );
  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kWhiteColor,
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             children: [
//               navbar(),
//               image(),
//               content(),
//               button(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
