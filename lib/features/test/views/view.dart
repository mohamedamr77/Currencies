import 'package:flutter/material.dart';

import '../customCalculatorScreen.dart';

class CustomButtonScreen extends StatelessWidget {
  const CustomButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Center(
          //   child: ElevatedButton(onPressed: (){
          //      Navigator.push(context, MaterialPageRoute(builder: (context) => CustomCurrencyConverterScreen(),));
          //   }, child: Text("Calculator")),
          // ),
        ],
      ),
    );
  }
}


