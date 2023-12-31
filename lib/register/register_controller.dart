import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motorstar/endpoints/api.dart';
import 'package:http/http.dart' as http;
import 'package:motorstar/materials/routes.dart';

class RegisterController extends GetxController {
  var isLoading = false.obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  var obscureText = true.obs;

  void register(String email, password) async {
    isLoading(true);
    try {
      http.Response response = await http.post(
          Uri.tryParse(EndPoints.baseUrl + EndPoints.authEndPoints.login)!,
          headers: {
            'email': emailController.value.text,
            'password': passwordController.value.text,
          });

      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        isLoading.value = false;
        emailController.value.clear();
        passwordController.value.clear();
        Get.snackbar(
            'Register Succesful!', emailController.value.text.toString());
        Get.toNamed(Routes.navigatorScreen);
      } else if (response.statusCode == 400) {
        isLoading.value = false;
        Get.snackbar('Register Failed!', data['error'].toString());
      } else {
        isLoading.value = false;
        Get.snackbar('Register Failed!', data['error'].toString());
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar('Message:', e.toString());
    }
  }
}
