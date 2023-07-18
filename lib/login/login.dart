import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motorstar/login/login_controller.dart';
import 'package:motorstar/pages/home.dart';
import 'package:motorstar/register/register.dart';

import '../materials/screens.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImageAndText(),
              const SizedBox(height: 20),
              _buildEmailText(),
              const SizedBox(height: 10),
              _buildEmailField(),
              const SizedBox(height: 20),
              _buildPasswordText(),
              const SizedBox(height: 10),
              _buildPasswordField(),
              const SizedBox(height: 50),
              _buildLoginButton(),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Get.to(const Register());
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(color: ColorPalette.elevatedButtonColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Center _buildImageAndText() {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Image.asset(Assets.vector),
          const SizedBox(height: 10),
          _buildText(),
        ],
      ),
    );
  }

  Center _buildLoginButton() {
    return Center(
      child: SizedBox(
        height: 50,
        width: 250,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorPalette.elevatedButtonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            onPressed: () {
              controller.login();
              // Get.to(const HomeScreen());
            },
            child: Obx(
              () => controller.isLoading.value
                  ? const Text(
                      "Loading....",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorPalette.elevatedTextColor),
                    )
                  : const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorPalette.elevatedTextColor),
                    ),
            )),
      ),
    );
  }

  SizedBox _buildPasswordField() {
    return SizedBox(
      height: 50,
      child: Obx(
        () => TextField(
          controller: controller.passwordController.value,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.done,
          obscureText: controller.obscureText.value,
          decoration: InputDecoration(
              prefixIcon: Image.asset(Assets.passwordIcon),
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
                  controller.obscureText.toggle();
                },
                child: Image.asset(controller.obscureText.isTrue
                    ? Assets.hideIcon
                    : Assets.showIcon),
              )),
        ),
      ),
    );
  }

  Text _buildPasswordText() {
    return const Text(
      "Password",
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    );
  }

  SizedBox _buildEmailField() {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: controller.emailController.value,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            prefixIcon: Image.asset(Assets.emailIcon),
            border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: ColorPalette.loginBorderColor),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: ColorPalette.containerColor),
            )),
      ),
    );
  }

  Text _buildEmailText() {
    return const Text(
      "Email",
      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    );
  }

  Text _buildText() {
    return const Text(
      "Login Now",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    );
  }
}
