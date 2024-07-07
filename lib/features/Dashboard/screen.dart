import 'package:digitaltransactions/core/color.dart';
import 'package:digitaltransactions/features/Dashboard/views/widgets/dashboard_body.dart';
import 'package:flutter/material.dart';

import '../drawer_widget/drawerBody.dart';
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      endDrawer: Drawer(
        child: DrawerBody(),
      ),
      body:  DashboardBody(),
    );
  }
}
