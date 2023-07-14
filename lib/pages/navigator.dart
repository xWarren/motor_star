import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:motorstar/profile/profile.dart';

import '../materials/colors.dart';
import '../materials/images.dart';
import 'home.dart';

class NavBottomScreen extends StatefulWidget {
  const NavBottomScreen({super.key});

  @override
  State<NavBottomScreen> createState() => _NavBottomScreenState();
}

class _NavBottomScreenState extends State<NavBottomScreen> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  bool isScrollingDown = false;
  double bottomBarHeight = 75;
  final ScrollController controller = ScrollController();
  final ValueNotifier<bool> visible = ValueNotifier<bool>(true);

  hideNavbar() {
    visible.value = true;
    controller.addListener(
      () {
        if (controller.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (visible.value) {
            visible.value = false;
          }
        }

        if (controller.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (!visible.value) {
            visible.value = true;
          }
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    visible.dispose();
  }

  List pages = [
    const HomeScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorPalette.backgroundColor,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: ColorPalette.elevatedButtonColor,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(Assets.homeIcon), label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.profileIcon), label: "Profile"),
        ],
      ),
    );
  }
}
