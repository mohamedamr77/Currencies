import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/image.dart';

class EconomicNewsDetailsBody extends StatelessWidget {
  const EconomicNewsDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Center(
                    child: SvgPicture.asset(ImageApp.logo,height: 200,)
                ),
                SizedBox(height: 20,),
                Text("بعد رفع سعر البنزين والسولار.. توقعات بزيادة مؤقتة في معدل التضخم",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Tajawal",
                  ),
                ),
                SizedBox(height: 50,),

                Text('''توقع مصرفيون ومحللون، تحدث إليهم "مصراوي"، أن يرتفع معدل التضخم- زيادة أسعار السلع- خلال الربع الثاني من العام الجاري بشكل مؤقت تحت ضغط زيادة أسعار البنزين والسولار باعتبارهما عناصر أساسية في تسعير كافة أنواع السلع قبل أن يعود للتراجع تدريجيا.
                
                
                رفعت مصر أسعار جميع فئات البنزين جنيهاً واحداً، الخميس الماضي كما زادت سعر السولار بأكثر من 21% إلى 10 جنيهات، من 8.25 جنيه، سواء لشركات إنتاج الكهرباء أو سعر تسليم المستهلك لمحطات خدمة وتموين السيارات.              ''',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff7a7a7a),
                    fontFamily: "Tajawal",
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.only(bottom: 50),
            child: GestureDetector(
              onTap: (){},
              child: Container(
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xff5726fc)
                ),
                child: Center(
                  child: Text("مصدر الخبر",
                    textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Tajawal",
                    )
                    ,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
