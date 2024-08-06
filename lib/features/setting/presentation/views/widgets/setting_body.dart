import 'package:digitaltransactions/core/shared_widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/image.dart';
import 'dialog.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
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
              child:  SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CustomAppbar(text: "الاعدادت", action: IconButton(onPressed: (){GoRouter.of(context).pop();}, icon: const Icon(Icons.arrow_forward_ios,color: Colors.white,)),),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "اهلا بيك في اسم التطبيق",
                        style: TextStyle(
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
                  Stack(children: [
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
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomListTile(trailingImage: ImageApp.el3omla, title:  "العملة الأساسية",),

              CustomListTile(trailingImage: ImageApp.lang, title: "اللغة",onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => const DialogScreen());
              },),


              CustomListTile(trailingImage: ImageApp.notification, title: "الاشعارات",),

              CustomListTile(trailingImage: ImageApp.elkhat, title: "اعداد الخط",),


              CustomListTile(trailingImage: ImageApp.about, title: "عن التطبيق",),

              CustomListTile(trailingImage: ImageApp.signout, title: "تسجيل خروج",)
            ],
          )
        )
      ],
    );
  }
}


class CustomListTile extends StatelessWidget {
   CustomListTile({super.key, required this.trailingImage, required this.title,this.onTap});
   final String trailingImage;
   final String title;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: onTap,
        tileColor: Colors.white,
        leading: Image.asset(
          ImageApp.arrow,
          height: 15.h,
          width: 15.w,
        ),
        title:  Text(title,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontFamily: "Tajawal",
            )),
        trailing:
        Image.asset(trailingImage, height: 30, width: 30),
      ),
    );
  }
}
