// import 'package:digitaltransactions/core/color.dart';
// import 'package:digitaltransactions/core/image.dart';
// import 'package:digitaltransactions/core/text.dart';
// import 'package:digitaltransactions/features/Dashboard/views/widgets/custom_appbar.dart';
// import 'package:digitaltransactions/features/Dashboard/views/widgets/description_listview_horizontal.dart';
// import 'package:flutter/material.dart';
// import '../../Dashboard/views/widgets/drawer_widget/drawerBody.dart';
//
// class CalculatorPriceScreen extends StatefulWidget {
//   const CalculatorPriceScreen({super.key});
//
//   @override
//   _CalculatorPriceScreenState createState() => _CalculatorPriceScreenState();
// }
//
// class _CalculatorPriceScreenState extends State<CalculatorPriceScreen> {
//   String selectedCurrency1 = "دولار أمريكي";
//   String selectedCurrency2 = "الجنيه المصري";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: Column(
//         children: [
//           Container(
//             padding: EdgeInsets.symmetric(vertical: 15),
//             width: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(ImageApp.appBarBGDetailsImage),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             child: SafeArea(
//               child: Column(
//                 children: [
//                   CustomAppbar(text: "حاسبة الاسعار ",
//                       action: Image(
//                         image: AssetImage(ImageApp.actionDashboardImage),)),
//                   DescriptionListviewHorizontal(
//                       text: "حدد العملة المراد تحويلها"),
//                   SizedBox(height: 10)
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             height: 400,
//             width: 400,
//
//           )
//
//         ],
//       ),
//       endDrawer: const Drawer(
//         child: DrawerBody(),
//       ),
//     );
//   }
// }
//
//
// /*
//
// /*
// Expanded(
//             child: ExpansionTile(
//               controlAffinity: ListTileControlAffinity.leading,
//               title: Text(currency, style: TextStyle(fontSize: 18)),
//               children: <String>['دولار أمريكي', 'الجنيه المصري'].map((String value) {
//                 return ListTile(
//                   title: Text(value),
//                   onTap: () {
//                     setState(() {
//                       if (index == 1) {
//                         selectedCurrency1 = value;
//                       } else {
//                         selectedCurrency2 = value;
//                       }
//                     });
//                     Navigator.pop(context);  // Close the expansion tile when an item is selected
//                   },
//                 );
//               }).toList(),
//             ),
//           ),
//  */
//
// /*
//  Expanded(
//             child: TextField(
//               textDirection: TextDirection.rtl,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 border: InputBorder.none,
//
//                 hintStyle: TextStyle(fontSize: 24),
//               ),
//               style: TextStyle(fontSize: 24),
//               textAlign: TextAlign.end,
//             ),
//           ),
//  */
//  */