import 'package:digitaltransactions/core/image.dart';
import 'package:digitaltransactions/core/shared_widget/custom_appbar.dart';
import 'package:digitaltransactions/core/shared_widget/description_listview_horizontal.dart';
import 'package:digitaltransactions/features/calculatorGold/views/widgets/gold_calculator_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class GoldCalculatorScreen extends StatelessWidget {
  const GoldCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F6FA),
      body:GoldCalculatorBody() ,
    );
  }
}


//GoldCalculatorBody
//  backgroundColor: Color(0xffF5F6FA),
//GoldCalculatorScreen