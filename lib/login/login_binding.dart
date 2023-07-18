import 'package:get/get.dart';

import 'login_controller.dart';

class LoginBiding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}
