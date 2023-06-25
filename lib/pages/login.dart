import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../materials/screens.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
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
              _buildLoginButton()
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
              Get.toNamed(Routes.navigatorScreen);
            },
            child: const Text(
              "Login",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorPalette.elevatedTextColor),
            )),
      ),
    );
  }

  SizedBox _buildPasswordField() {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: passwordController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        obscureText: obscureText,
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
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child:
                  Image.asset(obscureText ? Assets.hideIcon : Assets.showIcon),
            )),
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
        controller: emailController,
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
