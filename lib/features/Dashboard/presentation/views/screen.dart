import 'package:digitaltransactions/core/utils/color.dart';
import 'package:digitaltransactions/features/Dashboard/presentation/views/widgets/dashboard_body.dart';
import 'package:flutter/material.dart';


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

      body: DashboardBody(),
    );
  }
}
