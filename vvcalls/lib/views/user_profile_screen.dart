import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vvcalls/controllers/friends_list.dart';

import '../routes/routes.dart';

class UserProfileScreen extends StatelessWidget {
  UserProfileScreen({Key? key}) : super(key: key);
  List<String> friend = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 87, 226),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.toNamed(RoutesClass.getUserHomeRoute());
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5.0, right: 7.0),
                        child: ClipOval(
                          child: Image.asset(
                            'logs.png',
                            height: 40.0,
                            width: 40.0,
                          ),
                        ),
                      ),
                      Text(
                        "vChat",
                        style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                    icon: const Icon(Icons.settings),
                    color: Colors.white,
                    onPressed: () {
                      Get.toNamed(RoutesClass.userSettingsScreen);
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: ClipOval(
                    child: Image.asset(
                      'profile.png',
                      height: 200.0,
                      width: 200.0,
                    ),
                  ),
                ),
                Text(
                  friend[0],
                  style: GoogleFonts.nunito(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: const Icon(
                          Icons.chat_outlined,
                          size: 40.0,
                          color: const Color.fromARGB(255, 6, 87, 226),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: const Icon(
                          Icons.call,
                          size: 40.0,
                          color: const Color.fromARGB(255, 6, 87, 226),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        margin: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: const Icon(
                          Icons.videocam_sharp,
                          size: 40.0,
                          color: const Color.fromARGB(255, 6, 87, 226),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                ListTile(
                  onTap: null,
                  leading: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                        color: const Color.fromARGB(255, 6, 87, 226),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child:
                        const Icon(Icons.call, size: 30.0, color: Colors.white),
                  ),
                  title: Text(
                    "Phone Number",
                    style: GoogleFonts.nunito(fontSize: 15),
                  ),
                  subtitle: Text("+2348012345678",
                      style: GoogleFonts.nunito(fontSize: 15)),
                ),
                const Divider(
                  height: 2.0,
                  color: Colors.black,
                ),
                ListTile(
                  onTap: null,
                  leading: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: const BoxDecoration(
                        color: const Color.fromARGB(255, 6, 87, 226),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: const Icon(Icons.mail_outline,
                        size: 30.0, color: Colors.white),
                  ),
                  title: Text(
                    friend[1],
                    style: GoogleFonts.nunito(fontSize: 15),
                  ),
                  subtitle: Text("lucycat@benin.com",
                      style: GoogleFonts.nunito(fontSize: 15)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
