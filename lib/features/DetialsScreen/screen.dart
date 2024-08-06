import 'package:digitaltransactions/core/color.dart';
import 'package:digitaltransactions/features/DetialsScreen/presentation/views/widgets/detials_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: DetialsScreenBody(),
    );
  }
}
