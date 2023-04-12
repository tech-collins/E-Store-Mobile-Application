import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:vvcalls/routes/routes.dart';
import 'package:vvcalls/views/forgot_password.dart';
import 'package:vvcalls/views/home.dart';
import 'package:vvcalls/views/login.dart';
import 'package:vvcalls/views/register.dart';
import 'package:vvcalls/views/registration_complete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //home: const Home(),
      initialRoute: RoutesClass.getHomeRoute(),
      getPages: RoutesClass.routes,
      /*routes: {
        Home.idScreen: (context) => const Home(),
        Register.idScreen: (context) => Register(),
        Login.idScreen: (context) => Login(),
        ForgotPassword.idScreen: (context) => ForgotPassword(),
        RegistrationComplete.idScreen: (context) => RegistrationComplete()
        //'/home': (BuildContext context) => new Home(),
      },*/
    );
  }
}
