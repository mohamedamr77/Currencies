import 'package:flutter/material.dart';
import 'custom_banner_setting_Screen.dart';
import 'list_view_listTile.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBannerSettingScreen(title: "الاعدادت", subTitle: "اهلا بيك في اسم التطبيق",),
        SizedBox(
          height: 10,
        ),
        ListViewListTile(),
      ],
    );
  }
}

