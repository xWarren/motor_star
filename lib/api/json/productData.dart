// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';
import 'dart:typed_data';

ProductData temperaturesFromJson(String str) =>
    ProductData.fromJson(json.decode(str));

String temperaturesToJson(ProductData data) => json.encode(data.toJson());

class ProductData {
  Customer customer;

  ProductData({
    required this.customer,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
        customer: Customer.fromJson(json["Customer"]),
      );

  Map<String, dynamic> toJson() => {
        "Customer": customer.toJson(),
      };
}

class Customer {
  int intCustomerId;
  String strItemName;
  int intStock;
  String strDescription;
  double dblPointCost;
  Uint8List blbItemPicture;

  Customer({
    required this.intCustomerId,
    required this.strItemName,
    required this.intStock,
    required this.strDescription,
    required this.dblPointCost,
    required this.blbItemPicture,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
      intCustomerId: json["intCustomerID"],
      strItemName: json["strItemName"],
      intStock: json["intStock"],
      strDescription: json["strDescription"],
      dblPointCost: json["dblPointCost"],
      blbItemPicture: json["blbItemPicture"]);

  Map<String, dynamic> toJson() => {
        "intCustomerID": intCustomerId,
        "strItemName": strItemName,
        "intStock": intStock,
        "strLastName": strDescription,
        "dblPointCost": dblPointCost,
        "blbItemPicture": blbItemPicture,
      };
}
