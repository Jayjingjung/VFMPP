import 'package:flutter/material.dart';
import 'package:vmfpp001/page/auth/address_page.dart';
import 'package:vmfpp001/page/auth/register_page.dart';
import 'package:vmfpp001/page/home/home.dart';
import 'package:vmfpp001/page/auth/login_page.dart';
import 'package:vmfpp001/page/auth/password_page.dart';
import 'package:vmfpp001/page/auth/forgot_page.dart';
import 'package:vmfpp001/page/auth/otp_page.dart';
import 'package:vmfpp001/page/auth/Confirm_password.dart';
import 'package:vmfpp001/page/home/menu_page.dart';
import 'package:vmfpp001/page/profile/profile.dart';
import 'package:vmfpp001/page/profile/detailed_profile.dart';
import 'package:vmfpp001/page/profile/seting.dart';
import 'package:vmfpp001/page/profile/change_password.dart';
import 'package:vmfpp001/page/form/leader.dart';
import 'package:vmfpp001/page/form/form.dart';
import 'package:vmfpp001/page/form/special.dart';
import 'package:vmfpp001/page/form/special_detailed.dart';

class RouterAPI {
  static const home = "/home";
  static const login = "/login";
  static const register = "/register";
  static const address = "/address";
  static const password = "/password";
  static const forgot = "/forgot";
  static const otp = "/otp";
  static const confirm_password = "/confirm_password";
  static const menuPage = "/menuPage";
  static const profile = "/profile";
  static const detailedProfilePage = "/detailedProfilePage";
  static const seting = "/seting";
  static const changepassword = "/changepassword";
  static const leader = "/leader";
  static const form = "/form";
  static const special = "/special";
  static const special_detailed = "/special_detailed";

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case login:
        return MaterialPageRoute(
          builder: (context) =>
              LoginPage(), // Ensure LoginPage is defined and imported
        );
      case register:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      case address:
        return MaterialPageRoute(
          builder: (context) => const AddressPage(),
        );
      case password:
        return MaterialPageRoute(
          builder: (context) => PasswordPage(),
        );
      case forgot:
        return MaterialPageRoute(
          builder: (context) => ForgotPage(),
        );
      case otp:
        return MaterialPageRoute(
          builder: (context) => OTPPage(),
        );
      case confirm_password:
        return MaterialPageRoute(
          builder: (context) => Confirm_Password(),
        );
      case menuPage:
        return MaterialPageRoute(
          builder: (context) => MenuPage(),
        );
      case profile:
        return MaterialPageRoute(
          builder: (context) => ProfilePage(),
        );
      case detailedProfilePage:
        return MaterialPageRoute(
          builder: (context) => DetailedProfilePage(),
        );
      case seting:
        return MaterialPageRoute(
          builder: (context) => SettingsPage(),
        );
      case changepassword:
        return MaterialPageRoute(
          builder: (context) => ChangePasswordPage(),
        );
      case leader:
        return MaterialPageRoute(
          builder: (context) => LeaderPage(),
        );
      case form:
        return MaterialPageRoute(
          builder: (context) => FormPage(),
        );
      case special:
        return MaterialPageRoute(
          builder: (context) => SpecialPage(),
        );
      case special_detailed:
        return MaterialPageRoute(
          builder: (context) => Special_detailedPage(),
        );
      default:
        throw const FormatException("Route not found! Check routes again!");
    }
  }
}
