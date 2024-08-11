import 'package:digitaltransactions/core/utils/color.dart';
import 'package:digitaltransactions/features/DetialsScreen/presentation/views/widgets/detials_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.id, });
  final int id;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: DetialsScreenBody(id: id, sellingPrice: '', buyingPrice: '',),
    );
  }
}
