import 'package:digitaltransactions/features/goldprices/presentation/views/widgets/gold_price_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/color.dart';

class GoldPricesScreen extends StatelessWidget {
  const GoldPricesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: GoldPriceBody(),
    );
  }
}
