import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../materials/screens.dart';
import '../pages/change_password.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: Get.height / 7),
            _buildAccountSettings(),
            _buildLine(),
            SizedBox(height: Get.height / 45),
            _buildChangePassword(),
            _buildDivider(),
            SizedBox(height: Get.height / 2),
            _buildLogOutButton()
          ],
        ),
      ),
    );
  }

  Row _buildAccountSettings() {
    return Row(
      children: [TextData.accountSettings],
    );
  }

  Divider _buildLine() {
    return const Divider(
      color: ColorPalette.lineColor,
      height: 1,
    );
  }

  GestureDetector _buildChangePassword() {
    return GestureDetector(
      onTap: () {
        Get.to(const ChangePasswordScreen(), transition: Transition.downToUp);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextData.changePasswordText,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(Assets.caretIcon),
          )
        ],
      ),
    );
  }

  Divider _buildDivider() {
    return const Divider(
      color: ColorPalette.lineColor,
    );
  }

  SizedBox _buildLogOutButton() {
    return SizedBox(
      height: Get.height / 15,
      width: Get.width / 1.5,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(color: ColorPalette.logOutColor))),
          onPressed: () {
            Get.offNamedUntil(Routes.loginScreen, (route) => false);
          },
          child: const Text(
            "Log out",
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: ColorPalette.logOutColor),
          )),
    );
  }
}
