import 'package:digitaltransactions/features/sliverPrices/presentation/views/widgets/sliver_prices_body.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color.dart';
import '../drawer_widget/drawerBody.dart';

class SliverPricesScreen extends StatelessWidget {
  const SliverPricesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      endDrawer: Drawer(
        child: DrawerBody(),
      ),
      body: SliverPricesBody(),
    );
  }
}
