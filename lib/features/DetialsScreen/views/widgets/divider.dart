import 'package:flutter/material.dart';

import '../../../../core/color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: ColorApp.dividerColor,
      endIndent: 15,
      indent: 15,
    );
  }
}
