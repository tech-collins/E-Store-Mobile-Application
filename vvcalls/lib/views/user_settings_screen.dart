import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vvcalls/routes/routes.dart';

class UserSettingsScreen extends StatelessWidget {
  const UserSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 6, 87, 226),
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: (() {
                              Get.toNamed(RoutesClass.getUserHomeRoute(),
                                  arguments: 0);
                            }),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 100.0),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 5.0, right: 7.0),
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
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      child: Text(
                        "Settings",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      child: ClipOval(
                        child: Image.asset(
                          'profile.png',
                          height: 100.0,
                          width: 100.0,
                        ),
                      ),
                    ),
                    Text(
                      "Janet Benin",
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text("janetbenin@benin.com",
                        style: GoogleFonts.nunito(fontSize: 12)),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(15.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: const BorderRadius.horizontal(),
                        color: Colors.white,
                        child: MaterialButton(
                          minWidth: MediaQuery.of(context).size.width * 0.45,
                          padding: const EdgeInsets.all(10.0),
                          onPressed: () {
                            Get.toNamed(RoutesClass.getEditProfileRoute());
                          },
                          child: Text(
                            "Edit Profile",
                            style: GoogleFonts.nunito(fontSize: 12),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      onTap: null,
                      leading: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                            color: const Color.fromARGB(255, 6, 87, 226),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: const Icon(Icons.notifications_none_outlined,
                            size: 20.0, color: Colors.white),
                      ),
                      title: Text(
                        "Notifications",
                        style: GoogleFonts.nunito(fontSize: 15),
                      ),
                    ),
                    const Divider(
                      height: 2.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: null,
                      leading: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                            color: const Color.fromARGB(255, 6, 87, 226),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: const Icon(Icons.vpn_key_outlined,
                            size: 20.0, color: Colors.white),
                      ),
                      title: Text(
                        "Change Password",
                        style: GoogleFonts.nunito(fontSize: 15),
                      ),
                    ),
                    const Divider(
                      height: 2.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: null,
                      leading: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                            color: const Color.fromARGB(255, 6, 87, 226),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: const Icon(Icons.logout,
                            size: 20.0, color: Colors.white),
                      ),
                      title: Text(
                        "Logout",
                        style: GoogleFonts.nunito(fontSize: 15),
                      ),
                    ),
                    const Divider(
                      height: 2.0,
                      color: Colors.black,
                    ),
                    ListTile(
                      onTap: null,
                      leading: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: const Icon(Icons.person_off_sharp,
                            size: 20.0, color: Colors.white),
                      ),
                      title: Text(
                        "Delete Account",
                        style: GoogleFonts.nunito(fontSize: 15),
                      ),
                    ),
                    const Divider(
                      height: 2.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
