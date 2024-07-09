import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../economicNewsDetails/views/screen.dart';

class LocalNewsTab extends StatelessWidget {
  const LocalNewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => EconomicNewsDetailsScreen()));
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              textDirection: TextDirection.rtl,

              children: [
                Image(image: const AssetImage("assets/images/newsimage.png"),
                  width: MediaQuery.sizeOf(context).width*0.32,
                  height: MediaQuery.sizeOf(context).height*0.17,
                ),
                const SizedBox(width: 5,),
                Column(
                  children: [
                   SizedBox(
                       width: MediaQuery.of(context).size.width*0.5,
                       child: const Text("بعد رفع سعر البنزين والسولار.. توقعات بزيادة مؤقتة في معدل التضخم",
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,
                         textDirection: TextDirection.rtl,
                         textAlign: TextAlign.right,
                         style: TextStyle(
                           color: Color(0xff14172c),
                           fontWeight: FontWeight.w700,
                           fontSize: 10,
                           fontFamily: "Tajawal",
                         ),

                       ),

                   ),
                    const SizedBox(height: 5,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: const Text('توقع مصرفيون ومحللون، تحدث إليهم "مصراوي"، أن يرتفع معدل التضخم- زيادة أسعار السلع- خلال الربع الثاني من العام الجاري بشكل مؤقت تحت ضغط زيادة أسعار البنزين والسولار باعتبارهما عناصر أساسية في تسعير كافة أنواع السلع قبل أن يعود للتراجع تدريجيا.',
                       maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Color(0xff919191),
                          fontWeight: FontWeight.w700,
                          fontSize: 8,
                          fontFamily: "Tajawal",
                        ),

                      ),

                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.5,
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          const CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                          ),
                          const SizedBox(width: 2,),
                          const Text("مصرواي",
                          style: TextStyle(
                            color: Color(0xff5927ff),
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            fontFamily: "Tajawal",
                          ),
                          ),
                          const Spacer(flex: 4,),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text("12:13",
                            style: TextStyle(
                              color: Color(0xff9e9e9e),
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              fontFamily: "Tajawal",
                            ),
                            ),
                          ),
                          const SizedBox(width: 3,),
                          SvgPicture.asset("assets/images/svg/time_icon.svg"),
                          const Spacer(flex: 1,),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text("12:13",
                              style: TextStyle(
                                color: Color(0xff9e9e9e),
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                fontFamily: "Tajawal",
                              ),
                            ),
                          ),
                          const SizedBox(width: 3,),
                          SvgPicture.asset("assets/images/svg/time_icon.svg")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 5);
      },
      itemCount: 3,
    );
  }
}
