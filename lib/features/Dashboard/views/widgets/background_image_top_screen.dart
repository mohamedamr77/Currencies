import 'package:flutter/cupertino.dart';
import '../../../../core/image.dart';


class BackgroundImageTopScreen extends StatelessWidget {
  const BackgroundImageTopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Image(image:const AssetImage(ImageApp.appBarBGDashboardImage),
      fit: BoxFit.fitHeight,
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height*0.3,
    );
  }
}
