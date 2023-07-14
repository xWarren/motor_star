import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motorstar/register/register_controller.dart';

import '../materials/screens.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  RegisterController controller = Get.put(RegisterController());

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.exit_to_app_rounded)),
      ),
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
              controller.register(controller.emailController.text,
                  controller.passwordController.text);
            },
            child: const Text(
              "Register",
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
        controller: controller.passwordController,
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
        controller: controller.emailController,
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
      "Register",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    );
  }
}
