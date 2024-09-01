import 'package:digitaltransactions/core/shared_widget/limited_numbert_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/utils/color.dart';
import '../../../../../../core/shared_widget/country_currency.dart';
import '../../../../../../core/utils/textstyle.dart';
import '../../../../../DetialsScreen/screen.dart';

class ItemListviewVerticalDashboard extends StatelessWidget {
  const ItemListviewVerticalDashboard({
    super.key,
    required this.image,
    required this.sellingPrice,
    @required this.buyingPrice,
    required this.nameWidget,
    required this.id,
     this.symbol,
  });
  final String image;
  final String sellingPrice;
  final String? buyingPrice;
  final String nameWidget;
  final int id;
  final String? symbol;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(
                id: id,
                name: nameWidget,
                symbol: symbol?? "Error",
                image: image,
              ),
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
            if (image.contains(".svg"))
              SvgPicture.network(
                image,
                width: 40,
                height: 40,
              ),
            if (image.contains(".png") || image.contains(".jpg"))
              Image.network(
                image,
                width: 40,
                height: 40,
                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                  return Icon(Icons.error, size: 40);
                },
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                },
              ),
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
                if (buyingPrice != null)
                  Text(
                    "$buyingPrice", // Replace with the actual selling price
                    style: const CustomTextStyle(
                      color: ColorApp.deebBlueTextColor,
                      fontFamily: "Tajawal",
                      fontSize: 16,
                    ),
                  ),
                Padding(
                  padding: buyingPrice != null
                      ? EdgeInsets.zero
                      : const EdgeInsets.only(left: 55),
                  child: SizedBox(
                      width: 90,
                      child: LimitedNumberText(
                        number: double.parse(sellingPrice),
                        style: const CustomTextStyle(
                          color: ColorApp.deebBlueTextColor,
                          fontFamily: "Tajawal",
                          fontSize: 16,
                        ),
                      )),
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
