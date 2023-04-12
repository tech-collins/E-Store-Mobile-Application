import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:vvcalls/views/login.dart';

import '../routes/routes.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  static const String idScreen = "forgotPasswordScreen";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            /*Navigator.pop(context, Login.idScreen);*/
            Get.offAndToNamed(RoutesClass.getLoginRoute());
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
                        height: 150.0,
                        width: 150.0,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin:
                        const EdgeInsets.only(top: 20, left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Forgot Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'calibre',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Enter your email address to reset your account",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'calibre',
                            fontSize: 12.0,
                          ),
                        ),
                        Text(
                          "password. Reset mail will be sent to your email.",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'calibre',
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(
                        top: 30.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      validator: ValidationBuilder()
                          .phone()
                          .minLength(11)
                          .maxLength(14)
                          .build(),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blueAccent,
                        contentPadding:
                            EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                        hintText: "enter email",
                        hintStyle: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white70),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(
                            style: BorderStyle.none,
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
                        minWidth: MediaQuery.of(context).size.width * 0.85,
                        padding: const EdgeInsets.all(10.0),
                        onPressed: () {},
                        child: const Text(
                          "Reset Password",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
