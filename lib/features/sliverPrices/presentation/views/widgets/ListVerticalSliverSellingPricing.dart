import 'package:flutter/material.dart';

import '../../../../ExchangeRates/presentation/views/widgets/listvertical_widget/item_listview_vertical_dashboard.dart';

class ListVerticalSliverSellingPricing extends StatelessWidget {
  const ListVerticalSliverSellingPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Column(
            children: [
              ItemListviewVerticalDashboard(
                widget: CircleAvatar(
                  backgroundColor: Color(0xffB0B0B0),
                  child: Text("925"),
                ),
                sellingPrice: "48.36",
                buyingPrice: "48.28",
                nameWidget: "فضة 925",
              ),
              SizedBox(
                height: 10,
              ),
            ],
          );
        },
        childCount: 10,
      ),
    );
  }
}
