import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vvcalls/routes/routes.dart';
import 'package:vvcalls/views/chat_list_screen.dart';
import 'package:vvcalls/views/friends_list_screen.dart';

class UserHomeScren extends StatefulWidget {
  const UserHomeScren({Key? key}) : super(key: key);

  @override
  State<UserHomeScren> createState() => _UserHomeScrenState();
}

class _UserHomeScrenState extends State<UserHomeScren>
    with SingleTickerProviderStateMixin {
  late TabController _mytabController;
  int _selectedIndex = Get.arguments;

  @override
  void initState() {
    super.initState();
    _mytabController = new TabController(length: 2, vsync: this);
    _mytabController.animateTo(_selectedIndex);
  }

  @override
  void dispose() {
    _mytabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //appBar: AppBar(),
        //backgroundColor: const Color.fromARGB(255, 6, 87, 226),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: const Color.fromARGB(255, 6, 87, 226),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5.0, right: 7.0),
                          child: GestureDetector(
                            onTap: () {
                              //Get.toNamed(RoutesClass.getUserSettingsRoute());
                            },
                            child: ClipOval(
                              child: Image.asset(
                                'logs.png',
                                height: 40.0,
                                width: 40.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "vChat",
                            style: GoogleFonts.nunito(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 25.0),
                        child: ClipOval(
                          child: Image.asset(
                            'profile.png',
                            height: 40.0,
                            width: 40.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 6, 87, 226),
              child: TabBar(
                  controller: _mytabController,
                  indicatorPadding: EdgeInsets.zero,
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: const [
                    Tab(
                      text: "Friends",
                    ),
                    Tab(
                      text: "Chats",
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(
                controller: _mytabController,
                children: [
                  Container(
                    child: FriendsListScreen(),
                  ),
                  Container(
                    child: ChatListScreen(),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5.0),
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(RoutesClass.getUserSettingsRoute());
                },
                child: const FloatingActionButton(
                  onPressed: null,
                  tooltip: 'user settings',
                  child: Icon(Icons.settings),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
