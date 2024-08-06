import 'package:flutter/material.dart';

import '../../../../../../core/utils/image.dart';
import '../../../../../../core/utils/text.dart';
import 'item_exchange_rates_horizontal.dart';

class ListHorizontalHigstPrices extends StatelessWidget {
  const ListHorizontalHigstPrices({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>
      const ItemExchangeRatesListHorizontal(
        imageCountry: ImageApp.americaImage,
        imageBank: ImageApp.americaImage,
        countryCurrency: TextApp.dollarText,
        abbreviationCountry: "USD",
        price: 48.8,
        nameBank: TextApp.aboZabyText,
      ),
      separatorBuilder: (context, index) =>
      const SizedBox(width: 10),
      itemCount: 10,
    );
  }
}
