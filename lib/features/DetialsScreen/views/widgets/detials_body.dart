import 'package:digitaltransactions/core/shared_widget/three_Text_bank_buying_selling.dart';
import 'package:digitaltransactions/features/DetialsScreen/views/widgets/transactions_buying_selling.dart';
import 'package:flutter/material.dart';
import 'Button_calculator.dart';
import 'CurrencyInfoCard_image_nameCurrency.dart';
import 'custom_slivelist.dart';
import 'details_appbar.dart';
import 'divider.dart';

class DetialsScreenBody extends StatelessWidget {
  const DetialsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height*0.38,
            child: const Stack(
              children: [
                DetailsAppbar(),
                CurrencyInfoCardImageNameCurrency(),
                ButtonCalculator(),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 8,)),
        const SliverToBoxAdapter(child: TransactionsBuyingSelling(),),
        const SliverToBoxAdapter(child: SizedBox(height:20,)),
        const SliverToBoxAdapter(child: CustomDivider(),),
        const SliverToBoxAdapter(child: ThreeTextDescriptionListViewVertical(text1: '', text2: '', text3: '',)),
        const SliverToBoxAdapter(child: SizedBox(height:10,)),
        const CustomSliverList(),
      ],
    );
  }
}

class CustomNumberText extends StatelessWidget{
  const CustomNumberText({super.key, required this.number, required this.colorText});
   final double number;
   final Color colorText;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width/3,
      child: Text("$number",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: colorText,
          fontFamily: "Tajawal",
          fontSize:20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}
