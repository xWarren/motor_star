import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../materials/routes.dart';
import '../endpoints/api.dart';

class ChangePasswordController extends GetxController {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  var isLoading = false.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    changepass();
  }

  changepass() async {
    try {
      isLoading(true);
      http.Response response = await http.post(
          Uri.tryParse(
              EndPoints.baseUrl + EndPoints.authEndPoints.changepassword)!,
          body: {
            "strPassword": newPasswordController.text,
          });
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        if (result.toString() == "Success") {
          Fluttertoast.showToast(
            msg: 'Change Password Successful',
            backgroundColor: Colors.green,
            textColor: Colors.white,
            toastLength: Toast.LENGTH_SHORT,
          );
          Get.toNamed(Routes.loginScreen);
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
