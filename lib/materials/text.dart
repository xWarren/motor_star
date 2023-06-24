import 'package:flutter/material.dart';

import 'screens.dart';

class TextData {
  static Text userName = const Text(
    "Juan Dela Cruz",
    style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorPalette.titleColor),
  );
  static Text userCntrlNumber = const Text(
    "123456789",
    style: TextStyle(fontSize: 12, color: ColorPalette.titleColor),
  );
  static Text overdue = const Text(
    "OVERDUE",
    style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: ColorPalette.titleColor),
  );
  static Text pointsBalanceText = const Text(
    "Points Balance",
    style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: ColorPalette.titleColor),
  );
  static Text pointsBalance = const Text(
    "45.30",
    style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w900,
        color: ColorPalette.titleColor),
  );
  static Text redeemRewardsText = const Text(
    "Redeem Rewards",
    style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: ColorPalette.titleColor),
  );
  static Text amountToPayText = const Text(
    "Amount to Pay",
    style: TextStyle(fontSize: 15),
  );
  static Text amountToPay = const Text(
    "₱2,362",
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
  );
  static Text remainingBalanceText = const Text(
    "Remaining Balance",
    style: TextStyle(fontSize: 15),
  );
  static Text remainingBalance = const Text(
    "₱72,190",
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
  );
  static Text totalText = const Text(
    "Total",
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
  );
  static Text total = const Text(
    "₱2,362",
    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
  );
  static Text accountSettings = const Text(
    "Account Settings",
    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
  );
  static Text changePasswordText = const Text(
    "Change Password",
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
  );
  static Text appBarChangePasswordText = const Text(
    "Change Password",
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
  );
  static Text oldPasswordText = const Text(
    "Old Password",
    style: TextStyle(fontSize: 13),
  );
  static Text newPasswordText = const Text(
    "New Password",
    style: TextStyle(fontSize: 13),
  );
  static Text confirmPasswordText = const Text(
    "Confirm New Password",
    style: TextStyle(fontSize: 13),
  );
  static Text buttonChangePasswordText = const Text(
    "Change Password",
    style: TextStyle(fontSize: 20, color: ColorPalette.titleColor),
  );
  static Text appBarProductDescriptionText = const Text(
    "Product Description",
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
  );
  static Text appBarRedeemRewardText = const Text(
    "Redeem Reward",
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
  );
  static Text buttonRedeemRewardsText = const Text(
    "Redeem Reward",
    style: TextStyle(fontSize: 20, color: ColorPalette.titleColor),
  );
}
