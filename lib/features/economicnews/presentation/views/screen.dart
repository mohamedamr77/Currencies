import 'package:digitaltransactions/features/economicnews/presentation/views/widgets/ecomnomicnewsbody.dart';
import 'package:flutter/material.dart';

class EconomicNewsScreen extends StatelessWidget {
  const EconomicNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EconomicNewsBody(),
    );
  }
}
