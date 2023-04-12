import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vvcalls/routes/routes.dart';
import 'package:vvcalls/views/login.dart';
import 'package:vvcalls/views/register.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const String idScreen = "homeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 87, 226),
      body: SafeArea(
        child: Container(
            child: Column(children: [
          Container(
              alignment: Alignment.center,
              //margin: const EdgeInsets.all(1.0),
              child: SizedBox(
                width: 500,
                child: ClipRect(
                  child: Image.asset(
                    'home.png',
                    height: 300.0,
                    width: 500.0,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    " Video Call and \n Messaging App",
                    style: GoogleFonts.nunito(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width * 0.85,
                      padding: const EdgeInsets.all(10.0),
                      onPressed: () {
                        /*Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));*/
                        Get.toNamed(RoutesClass.getRegisterRoute());
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already a member ?",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        /*Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Login()));*/
                        Get.toNamed(RoutesClass.getLoginRoute());
                      },
                      child: const Text("Sign in",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ])),
      ),
    );
  }
}
