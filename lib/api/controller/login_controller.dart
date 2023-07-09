import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../materials/routes.dart';
import '../endpoints/api.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isLoading = false.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    login();
  }

  login() async {
    try {
      isLoading(true);
      http.Response response = await http.post(
          Uri.tryParse(EndPoints.baseUrl + EndPoints.authEndPoints.login)!,
          body: {
            "strEmail": emailController.text,
            "strPassword": passwordController.text,
            "strFirstName": "",
          });
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        if (result.toString() == "Success") {
          Fluttertoast.showToast(
            msg: 'Login Successful',
            backgroundColor: Colors.green,
            textColor: Colors.white,
            toastLength: Toast.LENGTH_SHORT,
          );
          Get.toNamed(Routes.navigatorScreen);
        } else {
          Fluttertoast.showToast(
            backgroundColor: Colors.red,
            textColor: Colors.white,
            msg: 'Email and password invalid',
            toastLength: Toast.LENGTH_SHORT,
          );
        }
        isLoading(false);
      } else {
        return null;
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return null;
    } finally {
      isLoading(false);
    }
  }
}
