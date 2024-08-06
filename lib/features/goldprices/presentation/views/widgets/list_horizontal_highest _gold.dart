import 'package:flutter/material.dart';
import '../../../../../core/shared_widget/dashboard/Item_goldandsliver_ListHorizontal.dart';
import '../../../../../core/utils/image.dart';
import '../../../../../core/utils/text.dart';

class ListHorizontalHighestGold extends StatelessWidget {
  const ListHorizontalHighestGold({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const ItemGoldAndSliverListHorizontal(
        imageCountry: ImageApp.americaImage,
        countryCurrency: TextApp.dollarText,
        abbreviationCountry: "USD",
        price: "2,330.28",
        isGOld: true,
      ),
      separatorBuilder: (context, index) => const SizedBox(width: 10),
      itemCount: 10,
    );
  }
}
