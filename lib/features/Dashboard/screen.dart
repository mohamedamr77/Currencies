import 'package:digitaltransactions/core/color.dart';
import 'package:digitaltransactions/features/Dashboard/views/widgets/dashboard_body.dart';
import 'package:flutter/material.dart';
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body:  DashboardBody(),
    );
  }
}
/*
 ListView.separated(
               shrinkWrap: true,
               itemBuilder: (context, index) =>  Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(5),
             ),
             child: Row(
               textDirection: TextDirection.rtl,
               children: [
                 CircleAvatar(
                   child: Image(
                     image: AssetImage("assets/images/amreica.png"),
                     fit: BoxFit.cover,
                     width: double.infinity,
                     height: double.infinity,
                   ),
                 ),
                 SizedBox(width: 10),
                 CountryCurrency("دولار أمريكى "),
                 Spacer(flex: 2,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(
                       "48.48", // Replace with the actual buying price
                       style: TextStyle(
                         color: Color(0xff14172c),
                         fontFamily: "Tajawal",
                         fontSize: 16,
                       ),
                     ),
                     SizedBox(width: 62),
                     Text(
                       "48.50", // Replace with the actual selling price
                       style: TextStyle(
                         color: Color(0xff14172c),
                         fontFamily: "Tajawal",
                         fontSize: 16,
                       ),
                     ),
                   ],
                 ),

               ],
             ),
           ),
               separatorBuilder: (context, index) => SizedBox(height: 10,),
               itemCount: 13
           )
 */