import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:vvcalls/views/home.dart';
import 'package:vvcalls/views/registration_complete.dart';

import '../routes/routes.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  static const String idScreen = "registerScreen";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            //Navigator.pop(context, Home.idScreen);
            /*Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Home()));*/
            Get.offAndToNamed(RoutesClass.getHomeRoute());
          },
        ),
        backgroundColor: const Color.fromARGB(255, 6, 87, 226),
      ),
      backgroundColor: const Color.fromARGB(255, 6, 87, 226),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      margin: const EdgeInsets.all(10.0),
                      child: const Text(
                        "Registration",
                        style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'calibre',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: const Text(
                      "Please complete the form with your details.",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'calibre',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            scrollPadding: const EdgeInsets.all(10.0),
                            validator: ValidationBuilder()
                                .minLength(5)
                                .maxLength(50)
                                .build(),
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              hintText: "Fullname",
                              hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white70),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: ValidationBuilder()
                                .phone()
                                .minLength(11)
                                .maxLength(14)
                                .build(),
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              hintText: "+2348051234567",
                              hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white70),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: ValidationBuilder()
                                .email()
                                .minLength(11)
                                .maxLength(30)
                                .build(),
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              hintText: "email address",
                              hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white70),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: ValidationBuilder()
                                .minLength(8)
                                .maxLength(64)
                                .build(),
                            obscureText: true,
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              hintText: "password",
                              hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white70),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(15.0),
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                            child: MaterialButton(
                              minWidth:
                                  MediaQuery.of(context).size.width * 0.85,
                              padding: const EdgeInsets.all(10.0),
                              onPressed: () {
                                /*Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationComplete()));*/
                                Get.toNamed(
                                    RoutesClass.getRegisterCompleteRoute());
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
