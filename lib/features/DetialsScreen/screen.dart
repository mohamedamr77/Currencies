import 'package:digitaltransactions/features/DetialsScreen/views/widgets/detials_body.dart';
import 'package:flutter/material.dart';

import '../../core/image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      body: DetialsScreenBody(),
    );
  }
}
