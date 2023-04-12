import 'package:get/get.dart';
import 'package:vvcalls/views/chat_page_view.dart';
import 'package:vvcalls/views/edit_profile_screen.dart';
import 'package:vvcalls/views/forgot_password.dart';
import 'package:vvcalls/views/home.dart';
import 'package:vvcalls/views/login.dart';
import 'package:vvcalls/views/register.dart';
import 'package:vvcalls/views/registration_complete.dart';
import 'package:vvcalls/views/user_home_screen.dart';
import 'package:vvcalls/views/user_profile_screen.dart';
import 'package:vvcalls/views/user_settings_screen.dart';

class RoutesClass {
  static String home = "/";
  static String login = "/login";
  static String register = "/register";
  static String registerComplete = "/registerComplete";
  static String forgotPassword = "/forgotPassword";
  static String userHomeScreen = "/userHomeScreen";
  static String chatScreen = "/chatScreen";
  static String userProfileScreen = "/userProfileScreen";
  static String userSettingsScreen = "/userSettingsScreen";
  static String editProfileScreen = "/editProfileScreen";
  //EditProfile

  static String getHomeRoute() => home;
  static String getLoginRoute() => login;
  static String getRegisterRoute() => register;
  static String getRegisterCompleteRoute() => registerComplete;
  static String getForgotPasswordRoute() => forgotPassword;
  static String getUserHomeRoute() => userHomeScreen;
  static String getChatScreenRoute() => chatScreen;
  static String getUserProfileRoute() => userProfileScreen;
  static String getUserSettingsRoute() => userSettingsScreen;
  static String getEditProfileRoute() => editProfileScreen;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const Home()),
    GetPage(
        name: login,
        page: () => Login(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: register,
        page: () => Register(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: registerComplete,
        page: () => RegistrationComplete(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: forgotPassword,
        page: () => ForgotPassword(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: userHomeScreen,
        page: () => const UserHomeScren(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: chatScreen,
        page: () => const ChatPageView(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: userProfileScreen,
        page: () => UserProfileScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: userSettingsScreen,
        page: () => const UserSettingsScreen(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
    GetPage(
        name: editProfileScreen,
        page: () => EditProfile(),
        transition: Transition.fade,
        transitionDuration: const Duration(seconds: 1)),
  ];
}
