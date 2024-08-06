import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/shared_widget/custom_appbar.dart';
import '../../../../../core/utils/image.dart';

class CustomBannerSettingScreen extends StatelessWidget {
  const CustomBannerSettingScreen({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.34,
      child: Stack(children: [
        Container(
          height: 200.h,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageApp.settingboard),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  CustomAppbar(
                    text: title,
                    action: IconButton(
                        onPressed: () {
                          GoRouter.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                   Text(
                    subTitle,
                    style: const TextStyle(
                        fontFamily: "Tajawal", color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          bottom: 0,
          child: Column(
            children: [
              Stack(
                  children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 30,
                ),
                Positioned(
                  bottom: 5,
                  left: 5,
                  right: 5,
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundImage: Image.asset(ImageApp.person).image,
                  ),
                ),
              ]),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "اسم المستخدم",
                style:
                TextStyle(fontFamily: "Tajawal", color: Colors.black),
              )
            ],
          ),
        )
      ]),
    );
  }
}
