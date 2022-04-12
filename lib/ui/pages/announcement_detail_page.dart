import 'package:adira_cats/ui/pages/announcement_detail_page.dart';
import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/pages/announcement_detail_page.dart';
import 'package:adira_cats/ui/widgets/custom_button_border.dart';
import 'package:adira_cats/ui/widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';



class AnnouncementDetailPage extends StatefulWidget {
  AnnouncementDetailPage({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _AnnouncementDetailPageState();
  }
}

class _AnnouncementDetailPageState extends State<AnnouncementDetailPage> {
  late VideoPlayerController _videoPlayerController1;
  late VideoPlayerController _videoPlayerController2;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
   
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController1,
        aspectRatio: 3 / 2,
        autoPlay: true,
        looping: true,
    );
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
 
  Widget video(){
    return Container(
        height: 300,
        child: Row(
          children:[
            Chewie(
              controller: _chewieController,
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    _chewieController.dispose();
                    _videoPlayerController1.pause();
                    _videoPlayerController1.seekTo(Duration(seconds: 0));
                    _chewieController = ChewieController(
                      videoPlayerController: _videoPlayerController1,
                      aspectRatio: 2 / 2,
                      autoPlay: true,
                      looping: true,
                    );
                  });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                ),
              ),
            ),
          ],
        ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                navbar(),
                video(),
                content(),
                button(),
              ],
            ),
          ),
        ),
    );
  }
}

class VideoScaffold extends StatefulWidget {
  const VideoScaffold({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<StatefulWidget> createState() => _VideoScaffoldState();
}

class _VideoScaffoldState extends State<VideoScaffold> {
  @override
  void initState() {
   
    super.initState();
  }

  @override
  dispose() {
   
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }  
}

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