import 'package:motorstar/materials/images.dart';

class Items {
  final String itemName;
  final double pointsValue;
  final String viewImage;
  final String description;
  bool isSelected;

  Items(
      {required this.itemName,
      required this.pointsValue,
      required this.viewImage,
      required this.description,
      this.isSelected = false});
}

List<Items> itemsdata = [
  Items(
      itemName: "Tumbler Bottle",
      pointsValue: 150.00,
      viewImage: Assets.tumbler,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
  Items(
      itemName: "T-Shirt",
      pointsValue: 100.00,
      viewImage: Assets.tshirt,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
  Items(
      itemName: "ID-Lace",
      pointsValue: 50.00,
      viewImage: Assets.idlace,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
  Items(
      itemName: "Key-Chain",
      pointsValue: 20.00,
      viewImage: Assets.keychain,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
  Items(
      itemName: "Hoodie Jacket",
      pointsValue: 250.00,
      viewImage: Assets.hoodie,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
  Items(
      itemName: "String Bag",
      pointsValue: 200.00,
      viewImage: Assets.stringbag,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
  Items(
      itemName: "Motor Gloves",
      pointsValue: 500.00,
      viewImage: Assets.motorgloves,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
];
