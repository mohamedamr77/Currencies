// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// import '../../../../core/color.dart';
// import '../../../../core/image.dart';
// import '../../../../core/text.dart';
//
// class ButtonCalculator extends StatelessWidget {
//   const ButtonCalculator({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return   Positioned(
//         bottom: MediaQuery.sizeOf(context).height*0.065,
//         left:  MediaQuery.sizeOf(context).width*0.04,
//         child: GestureDetector(
//           onTap: () {
//             showModalBottomSheet(
//               context: context, builder: (context) {
//               return SingleChildScrollView(
//                 physics: const NeverScrollableScrollPhysics(),
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//                   child:Column(
//                     children: [
//                       const Center(
//                           child: Text("اكتب المبلغ",style: TextStyle(fontSize: 20,fontFamily: "Tajawal",color: Color(0xff444555)),)
//                       ),
//                       Row(children: [
//                         const Expanded(
//                             child: Text("40",style: TextStyle(fontSize: 30),)),
//                         const Text("دولار أمريكى",style: TextStyle(fontSize: 20,fontFamily: "Tajawal",color: Color(0xff444555)),),
//                         const SizedBox(width: 5,),
//                         CircleAvatar(
//                           child:CircleAvatar(
//                             backgroundImage: Image.asset(ImageApp.amirca,height: 50,width: 50,).image,
//                           ) ,)
//                       ],
//                       ),
//                       const SizedBox(height: 10,),
//                       const Divider(endIndent: 200,),
//                       Row(
//                         children: [
//                           const Expanded(
//                               child: Text("1920",style: TextStyle(fontSize: 30),)),
//                           const Text("الجنية المصري",style: TextStyle(fontSize: 20,fontFamily: "Tajawal",color: Color(0xff444555)),),
//                           const SizedBox(width: 5,),
//                           CircleAvatar(
//                             child:CircleAvatar(
//                               child:Image(image: AssetImage(ImageApp.egypt) ,width: double.infinity,
//                                 fit: BoxFit.fill,
//                               ) ,
//                             ),)
//                         ],),
//                       const SizedBox(height: 5,),
//                       Row(
//                         children: [
//                            ShowModelBottomSheetContainerCalculcator(text: '1', onTap: () {
//
//                           },),
//                           const SizedBox(width: 15,),
//                           ShowModelBottomSheetContainerCalculcator(text: '2', onTap: () {
//
//                           },),
//                           const SizedBox(width: 15,),
//                           ShowModelBottomSheetContainerCalculcator(text: '3', onTap: () {
//
//                           },),
//                         ],
//                       ),
//                       const SizedBox(height: 5,),
//                       Row(
//                         children: [
//                           ShowModelBottomSheetContainerCalculcator(text: '4', onTap: () {
//
//                           },),
//                           const SizedBox(width: 15,),
//                           ShowModelBottomSheetContainerCalculcator(text: '5', onTap: () {
//
//                           },),
//                           const SizedBox(width: 15,),
//                           ShowModelBottomSheetContainerCalculcator(text: '6', onTap: () {
//
//                           },),
//                         ],
//                       ),
//                       const SizedBox(height: 5,),
//                       Row(
//                         children: [
//                           ShowModelBottomSheetContainerCalculcator(text: '7', onTap: () {
//
//                           },),
//                           const SizedBox(width: 15,),
//                           ShowModelBottomSheetContainerCalculcator(text: '8', onTap: () {
//
//                           },),
//                           const SizedBox(width: 15,),
//                           ShowModelBottomSheetContainerCalculcator(text: '9', onTap: () {
//
//                           },),
//                         ],
//                       ),
//                       const SizedBox(height: 5,),
//                       Row(
//                         children: [
//                           ShowModelBottomSheetContainerCalculcator(text: '.', onTap: () {
//
//                           },),
//                           const SizedBox(width: 15,),
//                           ShowModelBottomSheetContainerCalculcator(text: '0', onTap: () {
//
//                           },),
//                           const SizedBox(width: 15,),
//                           DoneButton(text: '', onTap: () {  },)
//
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//             );
//           },
//           child: Container(
//             padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
//             decoration: BoxDecoration(
//                 color: ColorApp.mediumSlatebBlueColor,
//                 borderRadius: BorderRadius.circular(5)
//             ),
//             child: Row(
//               children: [
//                 SvgPicture.asset(ImageApp.calculatorImage,
//                   color: ColorApp.whiteColor,
//                 ),
//                 const SizedBox(width: 10,),
//                 const Text(TextApp.translateText,
//                   style: TextStyle(
//                     color: ColorApp.ghostWhiteColor,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )
//     );
//   }
// }
//
// class ShowModelBottomSheetContainerCalculcator extends StatelessWidget{
//   const ShowModelBottomSheetContainerCalculcator({super.key, required this.text,required this.onTap});
//   final String text;
//   final void Function()? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//    return    Expanded(
//      child: GestureDetector(
//       onTap: onTap,
//        child: Container(
//          height:60 ,
//          width: 60,
//          decoration: BoxDecoration(
//            borderRadius: BorderRadius.circular(10),
//            color: const Color(0xffe8e8e8),
//          ),
//          child: Center(child: Text(text,
//          style: const TextStyle(
//            color:Color(0xff444555),
//            fontSize: 24,
//            fontFamily: "Tajawal"
//          ),
//
//          )),
//        ),
//      ),
//    );
//   }
// }
//
// class  DoneButton extends StatelessWidget{
//   const DoneButton({super.key, required this.text,required this.onTap});
//   final String text;
//   final void Function()? onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return    Expanded(
//       child: GestureDetector(
//         onTap: onTap,
//         child: Container(
//           height:60 ,
//           width: 60,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: const Color(0xff37e39f),
//           ),
//           child: const Center(child:  Icon(Icons.arrow_right_alt,
//           color: Colors.white,
//             size: 50,
//           )),
//         ),
//       ),
//     );
//   }
// }