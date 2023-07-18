import 'package:get/get.dart';
import 'package:motorstar/register/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RegisterController());
  }
}
