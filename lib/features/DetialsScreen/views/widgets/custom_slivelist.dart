import 'package:flutter/cupertino.dart';

import '../../../Dashboard/views/widgets/listview_vertical_body.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
        return
          const Column(
            children: [
               ListviewVerticalBody(),
              SizedBox(height:12),
            ],
          );
      },
      childCount: 10,
    ),);
  }
}
