import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../endpoints/api.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  var obscureText = true.obs;
  var isLoading = false.obs;

  void login() async {
    try {
      isLoading(true);
      http.Response response = await http.post(
          Uri.tryParse(EndPoints.baseUrl + EndPoints.authEndPoints.login)!,
          body: {
            'email': emailController.value.text,
            'password': passwordController.value.text,
          });

      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        isLoading.value = false;
        emailController.value.clear();
        passwordController.value.clear();
        Get.snackbar('Login Succesful!', emailController.value.text.toString());
      } else if (response.statusCode == 200) {
        isLoading.value = false;
        Get.snackbar('Login Failed!', data['errors'].toString());
      } else {
        isLoading.value = false;
        Get.snackbar('Login Failed!', data['error'].toString());
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Message:', e.toString());
    }
  }
}
