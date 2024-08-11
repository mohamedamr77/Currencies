import 'package:digitaltransactions/core/utils/color.dart';
import 'package:digitaltransactions/features/DetialsScreen/presentation/views/widgets/detials_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.id,
    required this.name,
    required this.symbol,
  });
  final int id;
  final String name;
  final String symbol;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: DetialsScreenBody(
        id: id,
        sellingPrice: '',
        buyingPrice: '',
        name: name,
        symbol: symbol,
      ),
    );
  }
}
