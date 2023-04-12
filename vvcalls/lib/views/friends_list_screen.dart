import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vvcalls/controllers/friends_list.dart';
import 'package:vvcalls/routes/routes.dart';
import 'package:get/get.dart';

class FriendsListScreen extends StatelessWidget {
  FriendsListScreen({Key? key}) : super(key: key);

  List<FriendsList> friendsLists = [
    FriendsList(
        name: "Jane Doe",
        email: "janedoe@gmail.com",
        /*imageURL: "images/userImage1.jpeg",*/ id: "01"),
    FriendsList(
        name: "Lucy Cat",
        email: "lucycat@gmail.com",
        /*imageURL: "images/userImage1.jpeg",*/ id: "02"),
    FriendsList(
        name: "Janet Jane",
        email: "janetjane@gmail.com",
        /*imageURL: "images/userImage1.jpeg",*/ id: "03"),
  ];

  List<String> df = [];

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
                  itemCount: friendsLists.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        try {
                          Get.toNamed(RoutesClass.getUserProfileRoute(),
                              arguments: [
                                friendsLists[index].name,
                                friendsLists[index].email
                              ]);
                        } catch (e) {}
                      },
                      leading: ClipOval(
                        child: Image.asset(
                          'profile.png',
                          fit: BoxFit.cover,
                          height: 40.0,
                          width: 40.0,
                        ),
                      ),
                      title: Text(
                        friendsLists[index].name,
                        style: GoogleFonts.nunito(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        friendsLists[index].email,
                        style: GoogleFonts.nunito(
                            fontSize: 13.0, color: Colors.black),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
