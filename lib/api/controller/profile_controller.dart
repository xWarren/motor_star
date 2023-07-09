import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProfileController extends GetxController {
  late List productData;
  var isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    product();
  }

  product() async {
    var response = await http.post(Uri.http(
        "192.168.100.16", "/flutter-motorstar/profile.php", {'q': '{http}'}));
    productData = jsonDecode(response.body);
    return 'Success';
  }
}
