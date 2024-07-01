import 'package:digitaltransactions/core/color.dart';
import 'package:digitaltransactions/core/text.dart';
import 'package:digitaltransactions/core/textstyle.dart';
import 'package:digitaltransactions/features/Dashboard/data/abbreviation_country.dart';
import 'package:digitaltransactions/features/Dashboard/views/widgets/three_Text_bank_buying_selling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/image.dart';
import '../../../Dashboard/views/widgets/listview_vertical_body.dart';

class DetialsScreenBody extends StatelessWidget {
  const DetialsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(

      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height*0.38,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height*0.248,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageApp.appBarBGDetailsImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child:  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.025,right: MediaQuery.of(context).size.width*0.07),
                      child: const Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text("دولار أمريكى",
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyle(
                                    color: ColorApp.whiteColor,
                                    fontFamily: "Tajawal",
                                    fontSize:20,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                color: ColorApp.whiteColor,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Column(
                      children: [
                        Stack(
                            alignment: Alignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: ColorApp.backgroundColor,
                              ),
                              CircleAvatar(
                                radius: 32,
                                child: Image(image: AssetImage(ImageApp.americaImage),
                                  fit: BoxFit.contain,
                                  height: double.infinity,
                                  width: double.infinity,
                                ),
                              ),
                            ]
                        ),
                        SizedBox(height: 10,),
                        Text("دولار أمريكى ",
                          maxLines: 1,
                          style: TextStyle(
                            color: ColorApp.primaryTextColor,
                            fontFamily: "Tajawal",
                            fontSize:20,
                          ),
                        ),
                        AbbreviationOfTheCountry(text: "USD"),
                      ],
                    )
                ),
                Positioned(
                    bottom: MediaQuery.sizeOf(context).height*0.065,
                    left:  MediaQuery.sizeOf(context).width*0.04,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                      decoration: BoxDecoration(
                          color: ColorApp.mediumSlatebBlueColor,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(ImageApp.calculatorImage,
                            color: ColorApp.whiteColor,
                          ),
                          const SizedBox(width: 10,),
                          const Text(TextApp.translateText,
                            style: TextStyle(
                              color: ColorApp.ghostWhiteColor,
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 8,)),
        SliverToBoxAdapter(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: "شراء"),

                  CustomText(text: "بيع"),

                  CustomText(text: "تغير"),

                ],
              ),
              SizedBox(height: 5,),
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  CustomNumberText(number: 213, colorText: ColorApp.deebBlueTextColor,),
                  CustomNumberText(number: 47.32, colorText:ColorApp.deebBlueTextColor ,),
                  CustomNumberText(number: -12, colorText: ColorApp.redColor,),
                ],
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height:20,)),
        SliverToBoxAdapter(
          child: Divider(
            color: ColorApp.dividerColor,
            endIndent: 15,
            indent: 15,
          ),
        ),
        SliverToBoxAdapter(child: const BankBuyingSelling()),
        SliverToBoxAdapter(child: SizedBox(height:10,)),
        SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
            return
                Column(
                  children: [
                    ListviewVerticalBody(),
                   SizedBox(height:12),
                  ],
                );
          },
        childCount: 10,
        ),
        )
      ],
    );
  }
}

class CustomNumberText extends StatelessWidget{
  const CustomNumberText({super.key, required this.number, required this.colorText});
   final double number;
   final Color colorText;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width/3,
      child: Text("$number",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: colorText,
          fontFamily: "Tajawal",
          fontSize:20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}
