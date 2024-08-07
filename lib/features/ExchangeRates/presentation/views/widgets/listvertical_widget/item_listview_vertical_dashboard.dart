import 'package:digitaltransactions/core/shared_widget/limited_numbert_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/utils/color.dart';
import '../../../../../../core/shared_widget/country_currency.dart';
import '../../../../../../core/utils/textstyle.dart';
import '../../../../../DetialsScreen/screen.dart';

class ItemListviewVerticalDashboard extends StatelessWidget {
  const ItemListviewVerticalDashboard(
      {super.key,
      required this.widget,
      required this.sellingPrice,
      @required this.buyingPrice,
      required this.nameWidget});
  final Widget widget;
  final String sellingPrice;
  final String? buyingPrice;
  final String nameWidget;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailsScreen(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          textDirection: TextDirection.rtl,
          children: [
            widget,
            const SizedBox(width: 10),
            CountryCurrency(
              nameWidget,
              fontSize: 16,
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               if(buyingPrice!=null)
                Text(
                  "$buyingPrice", // Replace with the actual selling price
                  style: const CustomTextStyle(
                    color: ColorApp.deebBlueTextColor,
                    fontFamily: "Tajawal",
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding:buyingPrice!=null? EdgeInsets.zero: EdgeInsets.only(left: 55),
                  child: SizedBox(
                    width: 90,
                    child: LimitedNumberText(
                      number: double.parse(sellingPrice),
                      style: const CustomTextStyle(
                        color: ColorApp.deebBlueTextColor,
                        fontFamily: "Tajawal",
                        fontSize: 16,
                      ),)
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
/*
style: const CustomTextStyle(
                        color: ColorApp.deebBlueTextColor,
                        fontFamily: "Tajawal",
                        fontSize: 16,
                      ),
 */
