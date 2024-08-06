import 'package:digitaltransactions/core/shared_widget/custom_appbar.dart';
import 'package:digitaltransactions/core/utils/image.dart';
import 'package:digitaltransactions/core/utils/text.dart';
import 'package:digitaltransactions/core/shared_widget/description_listview_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
                        CustomAppbar(
                            text: TextApp.economicNewsText,
                            action: IconButton(
                                onPressed: () {
                                  GoRouter.of(context).pop();
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ))),
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
