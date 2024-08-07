import 'package:digitaltransactions/features/ExchangeRates/presentation/view_model/model_highest_price.dart';
import 'package:flutter/material.dart';
import '../../../../../../services/get_highest_purchase_price_for_all_currencies.dart';
import 'item_exchange_rates_horizontal.dart';

class ListHorizontalHigstPrices extends StatelessWidget {
  const ListHorizontalHigstPrices({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BankModel>>(
      future: GetHighestPurchasePriceForAllCurrencies().get_highest_purchase_price_for_all_currencies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error.toString()}'));
          }

          if (snapshot.hasData) {
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var bank = snapshot.data![index];
                return ItemExchangeRatesListHorizontal(
                  imageCountry: bank.currency.image, // Update with actual country image logic
                  imageBank: bank.image ?? "", // Placeholder image if null
                  countryCurrency: bank.currency.name,
                  abbreviationCountry: bank.currency.symbol,
                  price: double.parse(bank.highestPurchasePrice),
                  nameBank: bank.BankName ?? "Unknown Bank",
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: snapshot.data!.length,
            );
          }
        }

        return const SizedBox.shrink();
      },
    );
  }
}
