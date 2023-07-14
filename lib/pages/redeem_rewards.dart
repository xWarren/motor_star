import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motorstar/materials/data_builder.dart';
import 'package:motorstar/pages/product_description.dart';

import '../materials/screens.dart';

class RedeemRewardsScreen extends StatefulWidget {
  const RedeemRewardsScreen({super.key});

  @override
  State<RedeemRewardsScreen> createState() => _RedeemRewardsScreenState();
}

class _RedeemRewardsScreenState extends State<RedeemRewardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[_buildSliverAppBar(), _buildSliverList()],
    ));
  }

  SliverList _buildSliverList() {
    return SliverList(
        delegate:
            SliverChildListDelegate(List.generate(itemsdata.length, (index) {
      return _buildList(index);
    })));
  }

  GestureDetector _buildList(int index) {
    return GestureDetector(
      onTap: () {
        Get.to(
            ProductDescriptionScreen(
              items: itemsdata[index],
            ),
            transition: Transition.fade);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: _buildItem(index),
          ),
          const Divider(
            color: ColorPalette.lineColor,
          ),
        ],
      ),
    );
  }

  Row _buildItem(int index) {
    return Row(
      children: [
        // Image.memory(json
        //     .decode(profileController.productData[index]['blbItemPicture'])),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemsdata[index].itemName,
                style: const TextStyle(
                    fontSize: 15, color: ColorPalette.textColor),
              ),
            ],
          ),
        )),
      ],
    );
  }

  SliverAppBar _buildSliverAppBar() {
    return const SliverAppBar(
      expandedHeight: 150.0,
      backgroundColor: ColorPalette.elevatedButtonColor,
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Points Rewards',
              textScaleFactor: 1,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: ColorPalette.titleColor),
            ),
          ],
        ),
      ),
      pinned: true,
    );
  }
}
