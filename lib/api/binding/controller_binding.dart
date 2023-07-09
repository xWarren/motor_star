import 'package:get/get.dart';
import 'package:motorstar/api/controller/login_controller.dart';

class GetXBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
