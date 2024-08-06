import 'package:digitaltransactions/features/economicNewsDetails/presentation/views/widgets/economic_news_details_body.dart';
import 'package:flutter/material.dart';

class EconomicNewsDetailsScreen extends StatelessWidget {
  const EconomicNewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
          padding: EdgeInsets.all(10), child: EconomicNewsDetailsBody()),
    );
  }
}
