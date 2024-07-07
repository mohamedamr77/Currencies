import 'package:digitaltransactions/features/economicnews/views/widgets/ecomnomicnewsbody.dart';
import 'package:flutter/material.dart';

import '../../drawer_widget/drawerBody.dart';

class EconomicNewsScreen extends StatelessWidget {
  const EconomicNewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EconomicNewsBody(),
      endDrawer: Drawer(
        child: DrawerBody(),
      ),
    );
  }
}
