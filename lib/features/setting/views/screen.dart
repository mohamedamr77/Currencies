import 'package:digitaltransactions/features/setting/views/widgets/setting_body.dart';
import 'package:flutter/material.dart';

import '../../drawer_widget/drawerBody.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: Drawer(
        child: DrawerBody(),
      ),
      backgroundColor: Color(0xffF5F6FA),
      body: SettingBody(),
    );
  }
}
