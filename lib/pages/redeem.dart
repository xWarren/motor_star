import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:motorstar/materials/data_builder.dart';

import '../materials/screens.dart';

class RedeemScreen extends StatefulWidget {
  final Items items;
  const RedeemScreen({required this.items, super.key});

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TextData.appBarRedeemRewardText),
      body: Column(
        children: [
          SizedBox(height: Get.height / 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Image.asset(widget.items.viewImage),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.items.itemName,
                        style: const TextStyle(
                            fontSize: 15, color: ColorPalette.textColor),
                      ),
                      Text(
                        "${widget.items.pointsValue.toStringAsFixed(2)} Points",
                        style: const TextStyle(
                            fontSize: 15, color: ColorPalette.itemPointsColor),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Points",
                  style: TextStyle(fontSize: 13, color: ColorPalette.textColor),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Available Balance",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.textColor),
                ),
                Text(
                  "45.30",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.textColor),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: ColorPalette.lineColor,
              height: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Cost",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.textColor),
                ),
                Text(
                  widget.items.pointsValue.toStringAsFixed(2),
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.textColor),
                ),
              ],
            ),
          ),
          SizedBox(height: Get.height / 2.4),
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
        ],
      ),
    );
  }
}
