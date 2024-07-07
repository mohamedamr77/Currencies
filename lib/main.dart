import 'package:flutter/material.dart';

import 'features/Dashboard/screen.dart';
import 'features/calculatorPrice/screen2.dart';
import 'features/calculatorPrice/views/screen.dart';
import 'features/economicnews/views/screen.dart';

void main(){
  runApp(const MyApp());
  //mohamed amr
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EconomicNewsScreen(),

    );
  }

}