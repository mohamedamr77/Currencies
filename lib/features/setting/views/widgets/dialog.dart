import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/image.dart';


class DialogScreen extends StatefulWidget {
  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  String? lang ;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(13),
        height: 300,
        child: Column(
          children: [
            Spacer(),
            Text("اختيار اللغة",style: TextStyle(fontSize: 20),),
            Spacer(flex: 2,),
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                      title: Text("العربية",textAlign: TextAlign.right,),
                      value:"العربية" ,
                      groupValue:lang ,
                      onChanged: (val){
                        setState(() {
                          lang=val;
                        });
                      }
                  ),


                ),
                SvgPicture.asset(
                  ImageApp.arabic,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: RadioListTile(
                      title: Text("الأنجليزية",textAlign: TextAlign.right,),
                      value:"الأنجليزية" ,
                      groupValue:lang ,
                      onChanged: (val){
                        setState(() {
                          lang=val;
                        });
                      }
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 17),
                  child: SvgPicture.asset(
                    ImageApp.english,
                  ),
                ),
              ],
            ),
            Spacer(flex: 3,),
            GestureDetector(
                onTap: (){

                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 8),
                    decoration: BoxDecoration(
                      color: Color(0xff5726fc),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: Text("حفظ",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Tajawal",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                )
            ),
            Spacer(flex: 1,),
          ],
        ),
      ),
    );
  }
}