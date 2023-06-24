import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:motorstar/materials/data_builder.dart';
import 'package:motorstar/pages/redeem.dart';

import '../materials/screens.dart';

class ProductDescriptionScreen extends StatefulWidget {
  final Items items;
  const ProductDescriptionScreen({required this.items, super.key});

  @override
  State<ProductDescriptionScreen> createState() =>
      _ProductDescriptionScreenState();
}

class _ProductDescriptionScreenState extends State<ProductDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TextData.appBarProductDescriptionText),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.items.viewImage,
              height: 150,
              width: 200,
              fit: BoxFit.fill,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(widget.items.itemName,
            style:
                const TextStyle(fontSize: 15, color: ColorPalette.textColor)),
        Text("${widget.items.pointsValue.toStringAsFixed(2)} Points",
            style: const TextStyle(
                fontSize: 15, color: ColorPalette.itemPointsColor)),
        SizedBox(height: Get.height / 15),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(children: [
              Text("Description",
                  style:
                      TextStyle(fontSize: 15, color: ColorPalette.textColor)),
            ])),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Flexible(
                  child: Text(
                widget.items.description,
                style: const TextStyle(
                    fontSize: 10, color: ColorPalette.textColor),
              ))
            ],
          ),
        ),
        SizedBox(height: Get.height / 5),
        SizedBox(
          height: Get.height / 15,
          width: Get.width / 1.5,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorPalette.elevatedButtonColor,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
              onPressed: () {
                Get.to(RedeemScreen(items: widget.items));
              },
              child: TextData.buttonRedeemRewardsText),
        )
      ]),
    );
  }
}
