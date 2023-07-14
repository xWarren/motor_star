import 'dart:convert';

import 'package:get/get.dart';
import 'package:motorstar/endpoints/api.dart';
import 'package:motorstar/profile/profile_json.dart';
import 'package:http/http.dart' as http;

class ProfileController extends GetxController {
  var isLoading = false.obs;
  Rx<ProfileData?> profileData = null.obs;

  @override
  Future<void> onInit() async {
    getProfile();
    super.onInit();
  }

  getProfile() async {
    try {
      isLoading(true);
      http.Response response = await http.get(
          Uri.tryParse(EndPoints.baseUrl + EndPoints.authEndPoints.users)!);
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        if (profileData.value != null) {
          profileData.value = ProfileData.fromJson(result);
        } else {
          profileData = ProfileData.fromJson(result).obs;
          // ignore: avoid_print
          print(profileData.value?.data.toString());
        }
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
