import 'package:flutter/material.dart';
import 'LocalNewsTab.dart'; // Ensure this is the correct import

class EconomicNewsTabs extends StatefulWidget {
  const EconomicNewsTabs({super.key});

  @override
  State<EconomicNewsTabs> createState() => _EconomicNewsTabsState();
}

class _EconomicNewsTabsState extends State<EconomicNewsTabs> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 65,
          child: TabBar(
            dividerColor: Colors.white,
            indicatorColor: Color(0xff3f35a6),
            labelColor: Color(0xff444555),
            unselectedLabelColor: Colors.grey,
            controller: tabController,
            tabs: const [
              Tab(text: "محلية"),
              Tab(text: "عربية"),
              Tab(text: "عالمية"),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              LocalNewsTab(),
              LocalNewsTab(),
              LocalNewsTab(),
            ],
          ),
        ),
      ],
    );
  }
}
