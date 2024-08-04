import 'package:flutter/material.dart';
import 'features/onboarding/views/widgets/onboarding_body.dart';
import 'features/test/views/view.dart';

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
      home: OnboardingBody(),
    );
  }

}