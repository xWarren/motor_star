import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../materials/screens.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool oldPasswordText = true;
  bool newPasswordText = true;
  bool confirmPasswordText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TextData.appBarChangePasswordText),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextData.oldPasswordText,
              const SizedBox(height: 10),
              _buildOldPasswordField(),
              const SizedBox(height: 20),
              TextData.newPasswordText,
              const SizedBox(height: 10),
              _buildNewPasswordField(),
              const SizedBox(height: 20),
              TextData.confirmPasswordText,
              const SizedBox(height: 10),
              _buildConfirmNewPasswordField(),
              const SizedBox(height: 50),
              _buildChangePasswordButton()
            ]),
      ),
    );
  }

  Center _buildChangePasswordButton() {
    return Center(
      child: SizedBox(
        height: Get.height / 15,
        width: Get.width / 1.5,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorPalette.elevatedButtonColor,
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
            onPressed: () {},
            child: TextData.buttonChangePasswordText),
      ),
    );
  }

  SizedBox _buildConfirmNewPasswordField() {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: confirmPasswordController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        obscureText: confirmPasswordText,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsetsDirectional.symmetric(horizontal: 20),
            border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorPalette.loginBorderColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(color: ColorPalette.containerColor)),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  confirmPasswordText = !confirmPasswordText;
                });
              },
              child: Image.asset(
                  confirmPasswordText ? Assets.hideIcon : Assets.showIcon),
            )),
      ),
    );
  }

  SizedBox _buildNewPasswordField() {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: newPasswordController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        obscureText: newPasswordText,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsetsDirectional.symmetric(horizontal: 20),
            border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorPalette.loginBorderColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(color: ColorPalette.containerColor)),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  newPasswordText = !newPasswordText;
                });
              },
              child: Image.asset(
                  newPasswordText ? Assets.hideIcon : Assets.showIcon),
            )),
      ),
    );
  }

  SizedBox _buildOldPasswordField() {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: oldPasswordController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        obscureText: oldPasswordText,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsetsDirectional.symmetric(horizontal: 20),
            border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorPalette.loginBorderColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(color: ColorPalette.containerColor)),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  oldPasswordText = !oldPasswordText;
                });
              },
              child: Image.asset(
                  oldPasswordText ? Assets.hideIcon : Assets.showIcon),
            )),
      ),
    );
  }
}
