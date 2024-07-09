import 'package:digitaltransactions/features/DetialsScreen/views/widgets/item_listview_vertical_details.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/image.dart';
import '../../../../core/text.dart';
import '../../../ExchangeRates/views/widgets/listvertical_widget/item_listview_vertical_dashboard.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return Column(
            children: [
              const ItemListviewVerticalDetails(
                widget: Image(
                  image: AssetImage(ImageApp.americaImage),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                sellingPrice: 48.36,
                buyingPrice: 48.28,
                nameWidget: TextApp.dollarText,
              ),
               SizedBox(height: 10), // Space between every two items
            ],
          );
        },
        childCount: 10, // Number of items in the list
      ),
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