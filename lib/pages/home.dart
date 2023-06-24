import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../materials/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.elevatedButtonColor,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [TextData.userName, TextData.userCntrlNumber],
                      ),
                    ),
                    Container(
                        width: Get.width / 3,
                        height: Get.height / 20,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                            color: ColorPalette.overdueColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: TextData.overdue),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextData.pointsBalanceText,
                TextData.pointsBalance,
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: Get.height / 17),
              Center(
                child: SizedBox(
                  height: Get.height / 10,
                  width: Get.width / 1.5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPalette.elevatedButtonColor,
                          elevation: 10,
                          shadowColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Get.toNamed(Routes.redeemRewardsScreen);
                      },
                      child: TextData.redeemRewardsText),
                ),
              ),
              SizedBox(height: Get.height / 17),
              Center(
                child: SizedBox(
                  height: Get.height / 10,
                  width: Get.width / 1.5,
                  child: Container(
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                                color: ColorPalette.elevatedButtonColor))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextData.amountToPayText,
                        TextData.amountToPay
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height / 17),
              Center(
                child: SizedBox(
                  height: Get.height / 10,
                  width: Get.width / 1.5,
                  child: Container(
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                                color: ColorPalette.elevatedButtonColor))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextData.remainingBalanceText,
                        TextData.remainingBalance
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height / 17),
              Center(
                child: SizedBox(
                  height: Get.height / 10,
                  width: Get.width / 1.5,
                  child: Container(
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                                color: ColorPalette.elevatedButtonColor))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [TextData.totalText, TextData.total],
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
