import 'dart:convert';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:motorstar/api/json/productData.dart';

class ProfileController extends GetxController {
  late List productData;
  var isLoading = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    product();
  }

  product() async {
    isLoading(true);
    var response = await http.get(Uri.http(
        "192.168.1.80", "/flutter-motorstar/product.php", {'q': '{http}'}));
    print('Response body: ${response.body}');
    var result = await json.decode(json.encode(response.body));
  }
}

//   var isLoading = false.obs;
//   @override
//   Future<void> onInit() async {
//     super.onInit();
//     product();
//   }

//   product() async {
//     var response = await http.post(Uri.http(
//         "192.168.1.80", "/flutter-motorstar/product.php", {'q': '{http}'}));
//     print(response.body);
//     if (productData.isNotEmpty) {
//       productData = json.decode(response.body);
//     }

//     return 'Success';
//   }
// }
