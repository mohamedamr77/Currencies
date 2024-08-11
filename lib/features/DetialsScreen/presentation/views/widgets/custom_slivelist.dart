import 'package:digitaltransactions/services/get_price_of_currency_in_bank.dart';
import 'package:flutter/material.dart';
import '../../view_model/price_of_currency_in_bank_model.dart';
import 'item_listview_vertical_details.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PriceOfCurrencyInBankModel>>(
      future: GetPriceOfCurrencyInBank().getPriceOfCurrencyInBank(id: id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverToBoxAdapter(
              child: Center(
            child: CircularProgressIndicator(),
          ));
        }

        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return SliverToBoxAdapter(
                child:
                    Center(child: Text('Error: ${snapshot.error.toString()}')));
          }

          if (snapshot.hasData) {
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  var bank = snapshot.data![index];
                  return Column(
                    children: [
                      ItemListviewVerticalDetails(
                        image: bank.image,
                        sellingPrice: bank.sellingPrice,
                        buyingPrice: bank.purchasingPrice,
                        nameWidget: bank.nameAr,
                      ),
                      const SizedBox(height: 10), // Space between every two items
                    ],
                  );
                },
                childCount:
                    snapshot.data!.length, // Adjusted to show 10 items + 2 ads
              ),
            );
          }
        }

        return const SizedBox.shrink();
      },
    );
  }
}
/*
  widget: Image(
                  image: AssetImage(ImageApp.americaImage),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                sellingPrice: 48.36,
                buyingPrice: 48.28,
                nameWidget: TextApp.dollarText,
 */
