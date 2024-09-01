import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../../core/shared_widget/country_currency.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/textstyle.dart';

class ItemListVerticalGoldSliver extends StatelessWidget {
  const ItemListVerticalGoldSliver({super.key, required this.image, required this.sellingPrice, this.buyingPrice, required this.nameWidget, required this.id});

  final String image;
  final String sellingPrice;
  final String? buyingPrice;
  final String nameWidget;
  final int id;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          CircleAvatar(
              backgroundColor: Colors.white,
              radius: 14,
              child: Image.network(
                image,
                width: 40,
                height: 40,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  if (kDebugMode) {
                    print("Image loading error: $error");
                  }
                  return const Icon(Icons.error, size: 40);
                },
              ),
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
              SizedBox(
                width: MediaQuery.of(context).size.width*0.27,
                child: Text(
                  sellingPrice, // Replace with the actual buying price
                  style: const CustomTextStyle(
                    color: ColorApp.deebBlueTextColor,
                    fontFamily: "Tajawal",
                    fontSize: 16,
                  ),
                ),
              ),
              // const SizedBox(width: 62),
              Text(
                buyingPrice??"not found", // Replace with the actual selling price
                style: const CustomTextStyle(
                  color: ColorApp.deebBlueTextColor,
                  fontFamily: "Tajawal",
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


/*
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
 */