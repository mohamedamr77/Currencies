import 'package:digitaltransactions/features/calculatorprice/presentation/views/widgets/calculator_price_body.dart';
import 'package:flutter/material.dart';

import '../../../drawer_widget/drawerBody.dart';

class CalculatorPriceScreen extends StatelessWidget {
  const CalculatorPriceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: Drawer(
        child: DrawerBody(),
      ),
      backgroundColor: Color(0xffF5F6FA),
      body: CalculatorPriceBody(),
    );
  }
}
