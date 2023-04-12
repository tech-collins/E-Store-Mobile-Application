import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../routes/routes.dart';

class RegistrationComplete extends StatelessWidget {
  RegistrationComplete({Key? key}) : super(key: key);
  static const String idScreen = "registrationCompleteScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 87, 226),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: const EdgeInsets.all(20.0),
                  child: ClipOval(
                    child: Image.asset(
                      'logs.png',
                      fit: BoxFit.cover,
                      height: 65.0,
                      width: 65.0,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.only(top: 15.0, left: 40.0, right: 40.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        //margin: const EdgeInsets.all(0.0),
                        child: ClipRect(
                          child: Image.asset(
                            'register.png',
                            //height: 300.0,
                            //width: 500.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(
                          top: 0.0,
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: Text(
                          "Congratulations!",
                          style: GoogleFonts.nunito(
                            color: const Color.fromARGB(255, 6, 87, 226),
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                          /*style: TextStyle(
                            color: Color.fromARGB(255, 6, 87, 226),
                            fontSize: 32.0,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold,
                          ),*/
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(
                            top: 5.9, right: 10.0, left: 10.0, bottom: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Registration is completed and your",
                                style: GoogleFonts.nunito(fontSize: 15.0)),
                            Text("account is ready to use.",
                                style: GoogleFonts.nunito(fontSize: 15.0))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(top: 20.0, left: 40.0, right: 40.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 50),
                        child: Text("Start Chating",
                            style: GoogleFonts.nunito(
                              color: const Color.fromARGB(255, 6, 87, 226),
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        margin: const EdgeInsets.only(
                            right: 5.0, top: 2.0, left: 10.0, bottom: 2.0),
                        child: FloatingActionButton(
                          onPressed: () {
                            Get.toNamed(RoutesClass.getUserHomeRoute(),
                                arguments: 0);
                          },
                          child: const Icon(Icons.arrow_forward),
                          backgroundColor:
                              const Color.fromARGB(255, 6, 87, 226),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
