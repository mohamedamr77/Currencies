import 'package:digitaltransactions/features/ExchangeRates/presentation/views/widgets/exchange_rates_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/color.dart';
import '../../../drawer_widget/drawerBody.dart';

class ExchangeRatesScreen extends StatelessWidget {
  const ExchangeRatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      endDrawer: Drawer(
        child: DrawerBody(),
      ),
      body: ExchangeRatesBody(),
    );
  }
}
