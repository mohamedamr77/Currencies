import 'package:flutter/material.dart';

import '../../../../../core/shared_widget/dashboard/Item_goldandsliver_ListHorizontal.dart';
import '../../../../../core/utils/image.dart';
import '../../../../../core/utils/text.dart';
import '../../../data/list_highest_price_silver.dart';

class ListHorizontalSliverHighest extends StatelessWidget {
  const ListHorizontalSliverHighest({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>  ItemGoldAndSliverListHorizontal(
        imageCountry: highestSilverPriceList[index].image,
        countryCurrency: highestSilverPriceList[index].nameCurrency,
        abbreviationCountry: highestSilverPriceList[index].abbreviation,
        price: highestSilverPriceList[index].price,
        isGOld: false,
        id: 20,
      ),
      separatorBuilder: (context, index) => const SizedBox(width: 10),
      itemCount: highestSilverPriceList.length,
    );
  }
}
