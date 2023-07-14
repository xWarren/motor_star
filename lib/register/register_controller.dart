import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motorstar/endpoints/api.dart';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  var isLoading = false.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Future<void> onInit() async {
    super.onInit();
    register(emailController.text, passwordController.text);
  }

  void register(String email, password) async {
    try {
      isLoading(true);
      http.Response response = await http.post(
          Uri.tryParse(EndPoints.baseUrl + EndPoints.authEndPoints.register)!,
          body: {
            'email': emailController.text,
            'password': passwordController.text,
          });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        // ignore: avoid_print
        print(data['token']);
        // ignore: avoid_print
        print("Account registered successfully");
      } else if (response.statusCode == 400) {
        var data = jsonDecode(response.body.toString());
        // ignore: avoid_print
        print(data['error']);
      } else {
        // ignore: avoid_print
        print("Error");
      }
      isLoading(false);
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }
}
