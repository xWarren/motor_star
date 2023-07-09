import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:motorstar/pages/change_password.dart';
import 'package:motorstar/pages/home.dart';
import 'package:motorstar/pages/login.dart';
import 'package:motorstar/pages/navigator.dart';
import 'package:motorstar/pages/redeem_rewards.dart';

import '../api/binding/controller_binding.dart';

class Routes {
  static String loginScreen = '/login';
  static String homeScreen = '/home';
  static String navigatorScreen = "/navigator";
  static String changePasswordScreen = "/change_password";
  static String redeemRewardsScreen = "/redeem_rewards";
}

final getPages = [
  GetPage(
    name: Routes.loginScreen,
    page: () => const LoginScreen(),
    binding: GetXBinding(),
  ),
  GetPage(
    name: Routes.homeScreen,
    page: () => const HomeScreen(),
  ),
  GetPage(
    name: Routes.navigatorScreen,
    page: () => const NavBottomScreen(),
  ),
  GetPage(
    name: Routes.changePasswordScreen,
    page: () => const ChangePasswordScreen(),
  ),
  GetPage(
    name: Routes.redeemRewardsScreen,
    page: () => const RedeemRewardsScreen(),
  ),
];
