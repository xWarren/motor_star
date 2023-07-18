import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motorstar/profile/profile_controller.dart';

import '../materials/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProfileController profileController = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: Get.height / 17),
              _buildRedeemRewardsButton(),
              SizedBox(height: Get.height / 17),
              _buildAmountToPay(),
              SizedBox(height: Get.height / 17),
              _buildRemainingBalance(),
              SizedBox(height: Get.height / 17),
              _buildTotal()
            ]),
      ),
    );
  }

  Center _buildRedeemRewardsButton() {
    return Center(
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
    );
  }

  Center _buildAmountToPay() {
    return Center(
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
            children: [TextData.amountToPayText, TextData.amountToPay],
          ),
        ),
      ),
    );
  }

  Center _buildRemainingBalance() {
    return Center(
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
    );
  }

  Center _buildTotal() {
    return Center(
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
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: ColorPalette.elevatedButtonColor,
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      bottom: _buildAppBarBottom(),
    );
  }

  PreferredSize _buildAppBarBottom() {
    return PreferredSize(
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
            _buildName(),
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
    );
  }

  Row _buildName() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Juan",
                style: TextStyle(fontSize: 12, color: ColorPalette.titleColor),
              ),
              Text(
                "Dela Cruz",
                style: TextStyle(fontSize: 12, color: ColorPalette.titleColor),
              ),
            ],
          ),
        ),
        _buildOverdue(),
      ],
    );
  }

  Container _buildOverdue() {
    return Container(
        width: Get.width / 3,
        height: Get.height / 20,
        alignment: Alignment.center,
        decoration: ShapeDecoration(
            color: ColorPalette.overdueColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: TextData.overdue);
  }
}
