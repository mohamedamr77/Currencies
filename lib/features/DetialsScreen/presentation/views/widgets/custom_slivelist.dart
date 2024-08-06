import 'package:flutter/cupertino.dart';
import '../../../../../core/utils/image.dart';
import '../../../../../core/utils/text.dart';
import 'item_listview_vertical_details.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return const Column(
            children: [
              ItemListviewVerticalDetails(
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
