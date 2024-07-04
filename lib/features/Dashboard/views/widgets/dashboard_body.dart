import 'package:digitaltransactions/features/Dashboard/views/widgets/custom_appbar.dart';
import 'package:digitaltransactions/features/Dashboard/views/widgets/three_Text_bank_buying_selling.dart';
import 'package:flutter/material.dart';
import '../../../../core/color.dart';
import '../../../../core/image.dart';
import '../../../../core/text.dart';
import 'listvertical_widget/listview_vertical_body.dart';
import 'listview_horizontal_widget/container_heigst_price.dart';
import 'description_listview_horizontal.dart';
import 'listvertical_widget/listview_vertical.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Column(
        children: [
          
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.42,
            child: Stack(
              children: [

                Container(
                  height: MediaQuery.sizeOf(context).height*0.31,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageApp.appBarBGDashboardImage),
                      fit: BoxFit.fill,
                    ),
                  ),

                  child: const Column(
                    children: [

                     CustomAppbar(text: TextApp.titleCenterDashboard, action: Image(image: AssetImage(ImageApp.actionDashboardImage),),),

                      DescriptionListviewHorizontal(text: 'اسعار الأونصة عالميا',),

                    ],
                  ),
                ),

                Positioned(
                  bottom: 0,
                  right: 5,
                  left: 0.1, // Ensure the containers are centered horizontally
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height*0.21,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>     const CustomListViewHorizontalBody(
                        imageCountry: ImageApp.americaImage,
                        imageBank: ImageApp.americaImage,
                        countryCurrency: TextApp.dollarText,
                        abbreviationCountry: "USD",
                        price:48.8 ,
                        nameBank: TextApp.aboZabyText,
                      ),
                      separatorBuilder: (context, index) => const SizedBox(width: 10,),
                      itemCount: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const ThreeTextDescriptionListViewVertical(text1: 'البنك', text2: 'شراء', text3: 'بيع',),

           ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>  const ListviewVerticalBody(
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
                    separatorBuilder: (context, index) {
                    return const SizedBox(height: 10,);
                    },
                    itemCount: 10
      )

        ],
      ),
    );
  }
}
