import 'package:digitaltransactions/core/image.dart';
import 'package:digitaltransactions/core/text.dart';
import 'package:digitaltransactions/core/shared_widget/description_listview_horizontal.dart';
import 'package:flutter/material.dart';
import '../../../../core/color.dart';
import '../../../../core/textstyle.dart';
import 'economic_news_tabs.dart';

class EconomicNewsBody extends StatefulWidget {
  const EconomicNewsBody({super.key});

  @override
  State<EconomicNewsBody> createState() => _EconomicNewsBodyState();
}

class _EconomicNewsBodyState extends State<EconomicNewsBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 320,
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageApp.appBarBGDashboardImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: SafeArea(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child: Text(TextApp.economicNewsText,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyle(
                                    color: ColorApp.whiteColor,
                                    fontFamily: "Tajawal",
                                    fontSize: 16,
                                    fontWeight: null,
                                    fontStyle: null,
                                  )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openEndDrawer();
                              },
                              child: const SizedBox(
                                height: 60,
                                width: 60,
                                child: Image(
                                  image:
                                      AssetImage(ImageApp.actionDashboardImage),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const DescriptionListviewHorizontal(
                            text: "اخر الأخبار"),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: const Image(
                      image: AssetImage("assets/images/ecnomicnews_image.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 320,
            child: const EconomicNewsTabs(),
          ),
        ],
      ),
    );
  }
}
