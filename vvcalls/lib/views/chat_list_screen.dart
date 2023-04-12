import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vvcalls/controllers/chat_users.dart';
import 'package:vvcalls/routes/routes.dart';

class ChatListScreen extends StatelessWidget {
  ChatListScreen({Key? key}) : super(key: key);

  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Jane Doe",
        messageText: "Awesome Setup",
        /*imageURL: "images/userImage1.jpeg",*/ time: "Now"),
    ChatUsers(
        name: "Lucy Cat",
        messageText: "That's Great",
        /*imageURL: "images/userImage1.jpeg",*/ time: "Yesterday"),
    ChatUsers(
        name: "Janet Jane",
        messageText: "Hey where are you?",
        /*imageURL: "images/userImage1.jpeg",*/ time: "31 Mar"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Container(
                /*padding: EdgeInsets.only(left: 16, right: 16, top: 10),*/
                child: ListView.builder(
                    itemCount: chatUsers.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 16),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(RoutesClass.getChatScreenRoute(),
                              arguments: chatUsers[index].name);
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 10, bottom: 10),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    ClipOval(
                                      child: Image.asset(
                                        'profile.png',
                                        height: 40.0,
                                        width: 40.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              chatUsers[index].name,
                                              style: GoogleFonts.nunito(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              chatUsers[index].messageText,
                                              style: GoogleFonts.nunito(
                                                  fontSize: 15),
                                            ),
                                            const Divider(
                                              height: 2.0,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                chatUsers[index].time,
                                style: GoogleFonts.nunito(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
