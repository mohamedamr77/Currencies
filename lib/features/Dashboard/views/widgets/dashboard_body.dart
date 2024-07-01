import 'package:digitaltransactions/features/Dashboard/views/widgets/custom_appbar.dart';
import 'package:digitaltransactions/features/Dashboard/views/widgets/three_Text_bank_buying_selling.dart';
import 'package:flutter/material.dart';
import 'listview_vertical.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Column(
        children: [

          CustomAppbar(),

          BankBuyingSelling(),

          ListviewVertical(),

        ],
      ),
    );
  }
}
