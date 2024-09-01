import 'package:flutter/material.dart';
import '../../../../../core/shared_widget/dashboard/Item_goldandsliver_ListHorizontal.dart';
import '../../../../../core/utils/text.dart';
import '../../../data/list_highset_price.dart';

class ListHorizontalHighestGold extends StatelessWidget {
  const ListHorizontalHighestGold({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>  ItemGoldAndSliverListHorizontal(
        imageCountry: highestGoldPriceList[index].image,
        countryCurrency: highestGoldPriceList[index].nameCurrency,
        abbreviationCountry: highestGoldPriceList[index].abbreviation,
        price: highestGoldPriceList[index].price,
        isGOld: true,
        id: 20,
      ),
      separatorBuilder: (context, index) => const SizedBox(width: 10),
      itemCount: highestGoldPriceList.length,
    );
  }
}
