import 'package:flutter/cupertino.dart';
import '../../../../core/image.dart';
import '../../../../core/text.dart';
import '../../../Dashboard/views/widgets/listvertical_widget/listview_vertical_body.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
        return
           Column(
            children: [
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>  const ListviewVerticalBody(
                    widget: Image(
                      image: AssetImage(ImageApp.americaImage),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    sellingPrice: 48.36,
                    buyingPrice: 48.28,
                    nameWidget: TextApp.dollarText,
                  ),
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 10,);
                  },
                  itemCount: 10
              ),
              SizedBox(height:12),
            ],
          );
      },
      childCount: 10,
    ),);
  }
}
