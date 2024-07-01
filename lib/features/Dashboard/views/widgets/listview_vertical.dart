import 'package:digitaltransactions/features/Dashboard/views/widgets/listview_vertical_body.dart';
import 'package:flutter/material.dart';
class ListviewVertical extends StatelessWidget {
  const ListviewVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return   ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) =>  const ListviewVerticalBody(),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10,);
        },
        itemCount: 10
    );
  }
}
