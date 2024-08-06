import 'package:digitaltransactions/features/setting/presentation/views/widgets/setting_body.dart';
import 'package:flutter/material.dart';


class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F6FA),
      body: SettingBody(),
    );
  }
}
