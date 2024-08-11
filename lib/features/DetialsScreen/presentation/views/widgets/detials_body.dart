import 'package:digitaltransactions/core/shared_widget/three_Text_Bank_buying_selling.dart';
import 'package:digitaltransactions/features/DetialsScreen/presentation/views/widgets/transactions_buying_selling.dart';
import 'package:flutter/material.dart';
import 'CurrencyInfoCard_image_nameCurrency.dart';
import 'custom_slivelist.dart';
import 'details_appbar.dart';
import 'divider.dart';

class DetialsScreenBody extends StatelessWidget {
  const DetialsScreenBody(
      {super.key,
      required this.id,
      required this.sellingPrice,
      required this.buyingPrice,
      required this.name,
      required this.symbol});
  final int id;
  final String sellingPrice;
  final String buyingPrice;
  final String name;
  final String symbol;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.38,
            child: Stack(
              children: [
                 DetailsAppbar(name: name,),
                CurrencyInfoCardImageNameCurrency(
                  name: name,
                  symbol: symbol,
                ),
                // ButtonCalculator(),
              ],
            ),
          ),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 8,
        )),
        const SliverToBoxAdapter(
          child: TransactionsBuyingSelling(
            sellingPrice: "243",
            buyingPrice: '100',
          ),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        const SliverToBoxAdapter(
          child: CustomDivider(),
        ),
        const SliverToBoxAdapter(
            child: ThreeTextDescriptionListViewVertical(
          text1: 'البنك',
          text2: 'شراء',
          text3: 'بيع',
        )),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 8,
        )),
        CustomSliverList(
          id: id,
        ),
      ],
    );
  }
}

class CustomNumberText extends StatelessWidget {
  const CustomNumberText(
      {super.key, required this.number, required this.colorText});
  final double number;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: Text(
        "$number",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: colorText,
          fontFamily: "Tajawal",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
