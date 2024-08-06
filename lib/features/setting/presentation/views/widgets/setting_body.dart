import 'package:digitaltransactions/core/shared_widget/custom_appbar.dart';
import 'package:flutter/material.dart';
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
              height: 200,
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
          child: Column(
            children: [
              ListTile(
                tileColor: Colors.white,
                leading: Image.asset(
                  ImageApp.arrow,
                  height: 30,
                  width: 30,
                ),
                title: const Text(
                  "العملة الأساسية",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontFamily: "Tajawal",
                  ),
                ),
                trailing: Image.asset(ImageApp.el3omla, height: 40, width: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => const DialogScreen());
                },
                tileColor: Colors.white,
                leading: Image.asset(ImageApp.arrow, height: 30, width: 30),
                title: const Text("اللغة",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: "Tajawal",
                    )),
                trailing: Image.asset(ImageApp.lang, height: 40, width: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Colors.white,
                leading: Image.asset(
                  ImageApp.arrow,
                  height: 30,
                  width: 30,
                ),
                title: const Text("الاشعارات",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: "Tajawal",
                    )),
                trailing:
                    Image.asset(ImageApp.notification, height: 40, width: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Colors.white,
                leading: Image.asset(
                  ImageApp.arrow,
                  height: 30,
                  width: 30,
                ),
                title: const Text("اعداد الخط",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: "Tajawal",
                    )),
                trailing: Image.asset(ImageApp.elkhat, height: 40, width: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Colors.white,
                leading: Image.asset(
                  ImageApp.arrow,
                  height: 30,
                  width: 30,
                ),
                title: const Text("عن التطبيق",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: "Tajawal",
                    )),
                trailing: Image.asset(ImageApp.about, height: 40, width: 40),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                tileColor: Colors.white,
                leading: Image.asset(
                  ImageApp.arrow,
                  height: 30,
                  width: 30,
                ),
                title: const Text("تسجيل خروج",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: "Tajawal",
                    )),
                trailing: Image.asset(ImageApp.signout, height: 40, width: 40),
              ),
            ],
          ),
        )
      ],
    );
  }
}
