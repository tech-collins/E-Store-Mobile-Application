import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:vvcalls/views/forgot_password.dart';
import 'package:vvcalls/views/home.dart';
import 'package:vvcalls/views/register.dart';

import '../routes/routes.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  static const String idScreen = "loginScreen";
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
            //Navigator.pop(context, Home.idScreen);
            Get.offAndToNamed((RoutesClass.getHomeRoute()));
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
                        height: 100.0,
                        width: 100.0,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(
                        top: 20.0, left: 10.0, right: 10.0),
                    child: const Text(
                      "Login to Your Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'calibre',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
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
                        hintText: "+2348051234567",
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
                    margin: const EdgeInsets.only(
                        top: 15.0, left: 20.0, right: 20.0),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      validator: ValidationBuilder()
                          .minLength(8)
                          .maxLength(64)
                          .build(),
                      obscureText: true,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.blueAccent,
                        contentPadding:
                            EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                        hintText: "password",
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
                          "Sign in",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an Account ?",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        TextButton(
                          onPressed: () {
                            /*Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()));*/
                            Get.toNamed(RoutesClass.getRegisterRoute());
                          },
                          child: const Text("Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      child: const Text("Forgot Password",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
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
