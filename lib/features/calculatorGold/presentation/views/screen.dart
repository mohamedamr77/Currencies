import 'package:digitaltransactions/features/calculatorGold/presentation/views/widgets/gold_calculator_body.dart';
import 'package:flutter/material.dart';

import '../../../drawer_widget/drawerBody.dart';

class GoldCalculatorScreen extends StatelessWidget {
  const GoldCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: Drawer(
        child: DrawerBody(),
      ),
      backgroundColor: Color(0xffF5F6FA),
      body: GoldCalculatorBody(),
    );
  }
}

//GoldCalculatorBody
//  backgroundColor: Color(0xffF5F6FA),
//GoldCalculatorScreen
