import 'dart:math';
import 'dart:convert';
import 'package:adira_cats/shared/theme.dart';
import 'package:adira_cats/ui/widgets/custom_drawer.dart';
import 'package:adira_cats/ui/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:open_file/open_file.dart';
import 'package:uuid/uuid.dart';

class MessageRoomPage extends StatefulWidget {
  const MessageRoomPage({Key? key}) : super(key: key);

  @override
  _MessageRoomPageState createState() => _MessageRoomPageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

class _MessageRoomPageState extends State<MessageRoomPage> {
  List<types.Message> _messages = [];
  final _user = const types.User(id: '06c33e8b-e835-4736-80f4-63f44b66666c');

  // NOTE: NAVBAR
  Widget navbar() {
    return Container(
      child: CustomNavbar(
        text: "Obrolan",
        preffixWidget: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Icon(Icons.subject_sharp),
        ),
        suffixWidget: GestureDetector(
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
      ),
    );
  }

  // NOTE: USER
  Widget user() {
    return Padding(
      padding: EdgeInsets.only(
        right: defaultPadding.w,
        left: defaultPadding.w,
        top: defaultPadding.h,
      ),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                width: 56.w,
                height: 56.h,
                margin: EdgeInsets.only(
                  right: 18.w,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image_cat6.png',
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Domestic',
                    style: blackTextStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Online',
                    style: darkGreyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Text(
                'Anda',
                style: blackTextStyle.copyWith(
                  fontSize: 12.sp,
                  fontWeight: bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                width: 56.w,
                height: 56.h,
                margin: EdgeInsets.only(
                  left: 18.w,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/image_user.png",
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

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  String randomString() {
    final random = Random.secure();
    final values = List<int>.generate(16, (i) => random.nextInt(255));
    return base64UrlEncode(values);
  }

  void _handleAtachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: SizedBox(
            height: 144,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _handleImageSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Photo'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('File'),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Cancel'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  void _handleMessageTap(BuildContext context, types.Message message) async {
    if (message is types.FileMessage) {
      await OpenFile.open(message.uri);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = _messages[index].copyWith(previewData: previewData);

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      setState(() {
        _messages[index] = updatedMessage;
      });
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Container(
        width: 300.w,
        height: 760.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
          child: CustomDrawer(),
        ),
      ),
      resizeToAvoidBottomInset: false,
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: false,
      floatingActionButton: Container(
        margin: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
        ),
        child: SizedBox(
          height: 410.h,
          child: Chat(
            theme: DefaultChatTheme(
              primaryColor: Color(0xfffffde0),
              secondaryColor: Color.fromARGB(33, 33, 33, 4),
              inputBackgroundColor: Colors.white,
              inputTextColor: Colors.black,
              inputTextCursorColor: Colors.black,
              sentMessageBodyTextStyle: TextStyle(color: Colors.black),
              sentEmojiMessageTextStyle: TextStyle(color: Colors.black),
              sentMessageLinkDescriptionTextStyle:
                  TextStyle(color: Colors.black),
              sentMessageLinkTitleTextStyle: TextStyle(color: Colors.black),
              sentMessageCaptionTextStyle: TextStyle(color: Colors.black),
              sentMessageDocumentIconColor: Colors.black,
              inputContainerDecoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                border: Border(
                  bottom: BorderSide(
                    width: 2,
                    color: Color.fromARGB(33, 33, 33, 012),
                  ),
                  top: BorderSide(
                    width: 2,
                    color: Color.fromARGB(33, 33, 33, 012),
                  ),
                  left: BorderSide(
                    width: 2,
                    color: Color.fromARGB(33, 33, 33, 012),
                  ),
                  right: BorderSide(
                    width: 2,
                    color: Color.fromARGB(33, 33, 33, 012),
                  ),
                ),
              ),
            ),
            messages: _messages,
            onAttachmentPressed: _handleAtachmentPressed,
            onMessageTap: _handleMessageTap,
            onPreviewDataFetched: _handlePreviewDataFetched,
            onSendPressed: _handleSendPressed,
            user: _user,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              navbar(),
              user(),
            ],
          ),
        ),
      ),
    );
  }
}
