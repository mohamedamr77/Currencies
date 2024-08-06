import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/routes.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  double height = 100;
  double width = 200;
  Alignment alignment = Alignment.centerLeft;
  bool showText = false; // Track if text should be shown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff8160ef),
              Color(0xff5927ff),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height == 100 ? 50 : 100),
                Stack(
                  children: [
                    if (height ==
                        100) // Show the white container only when height is 100
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                      ),
                    Padding(
                      padding: height == 100
                          ? const EdgeInsets.only(top: 20, left: 40)
                          : height == 110
                              ? EdgeInsets.symmetric(horizontal: width / 2)
                              : EdgeInsets.zero,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            height = MediaQuery.of(context).size.height;
                            width = MediaQuery.of(context).size.width;
                            alignment = Alignment.topLeft;
                          });
                          Future.delayed(const Duration(milliseconds: 1000),
                              () {
                            setState(() {
                              height = 110;
                              width = 200;
                              alignment = Alignment.center;
                              showText = true; // Show the text
                              // Delayed navigation after 1 second
                              Future.delayed(const Duration(seconds: 1), () {
                                GoRouter.of(context)
                                    .pushReplacement(AppRouter.kExchangeRates);
                              });
                            });
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 600),
                          height: height,
                          width: width,
                          alignment: alignment,
                          child: Transform.translate(
                            offset: height == MediaQuery.of(context).size.height
                                ? const Offset(0, -220)
                                : const Offset(0, 0),
                            child: SvgPicture.asset(
                              "assets/images/svg/bride.svg",
                              fit: BoxFit.cover,
                              height: height,
                              width: width,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                if (showText) // Show the text if showText is true
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width / 2 + 1, vertical: 10),
                    child: const Text(
                      "اسعار العملات",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Tajawal",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
