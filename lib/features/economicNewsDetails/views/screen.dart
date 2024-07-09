import 'package:digitaltransactions/core/image.dart';
import 'package:digitaltransactions/features/economicNewsDetails/views/widgets/economic_news_details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EconomicNewsDetailsScreen extends StatelessWidget {
  const EconomicNewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: EconomicNewsDetailsBody()
      ),
    ) ;

  }
}