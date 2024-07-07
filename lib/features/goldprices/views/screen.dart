import 'package:digitaltransactions/features/goldprices/views/widgets/gold_price_body.dart';
import 'package:flutter/material.dart';
import '../../../core/color.dart';
import '../../drawer_widget/drawerBody.dart';

class GoldPricesScreen extends StatelessWidget {
  const GoldPricesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      endDrawer: Drawer(
        child: DrawerBody(),
      ),
      body: GoldPriceBody(),
    );
  }
}
