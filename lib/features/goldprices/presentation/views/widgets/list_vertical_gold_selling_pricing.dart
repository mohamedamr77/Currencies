import 'package:flutter/material.dart';

import '../../../../ExchangeRates/presentation/views/widgets/listvertical_widget/item_listview_vertical_dashboard.dart';

class ListVerticalGoldSellingPricing extends StatelessWidget {
  const ListVerticalGoldSellingPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Column(
            children: [
              ItemListviewVerticalDashboard(
                widget: CircleAvatar(
                  backgroundColor: Color(0xffE3AC2A),
                  child: Text("18"),
                ),
                sellingPrice: "48.36",
                buyingPrice: "48.28",
                nameWidget: "عيار 18",
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
