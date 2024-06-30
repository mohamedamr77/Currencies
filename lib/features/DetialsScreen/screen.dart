import 'package:flutter/material.dart';

import '../../core/image.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      SizedBox(
        height: MediaQuery.sizeOf(context).height*0.35,
        child: Stack(
          children: [
            Image(
              image:const AssetImage(ImageApp.appBarBGDetailsImage),
              fit: BoxFit.fitHeight,
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height*0.3,
            ),
            const Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    radius: 32,
                    child: Image(image: AssetImage("assets/images/amreica.png"),
                    fit: BoxFit.contain,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
        ],
      ),
    );
  }
}
