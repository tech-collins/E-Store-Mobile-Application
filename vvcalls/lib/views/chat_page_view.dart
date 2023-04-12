import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:get/get.dart';

import '../routes/routes.dart';

class ChatPageView extends StatefulWidget {
  const ChatPageView({Key? key}) : super(key: key);

  @override
  State<ChatPageView> createState() => _ChatPageViewState();
}

class _ChatPageViewState extends State<ChatPageView> {
  List<types.Message> _messages = [];
  final _user = types.User(id: '001');
  String userName = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 6, 87, 226),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5.0, right: 10.0),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            //Navigator.pop(context, Home.idScreen);
                            Get.offAndToNamed(RoutesClass.getUserHomeRoute(),
                                arguments: 1);
                          },
                        ),
                      ),
                      Container(
                        child: Text(
                          userName,
                          style: GoogleFonts.nunito(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.white,
                          )),
                    ),
                    Container(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.video_camera_back_rounded,
                            color: Colors.white,
                          )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20.0),
                      child: ClipOval(
                        child: Image.asset(
                          'profile.png',
                          height: 40.0,
                          width: 40.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Chat(
                messages: _messages,
                onSendPressed: _handleSendPressed,
                user: _user,
                isAttachmentUploading: true,
                disableImageGallery: false,
                theme: const DefaultChatTheme(
                    documentIcon: Icon(Icons.attach_file),
                    deliveredIcon: Icon(Icons.mark_chat_read_rounded)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: 'id',
      text: message.text,
    );
    _addMessage(textMessage);
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }
}
