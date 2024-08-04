// // custom_currency_converter_screen.dart
// import 'package:flutter/material.dart';
//
// import 'calculator_logic.dart';
//
//
// class CustomCurrencyConverterScreen extends StatefulWidget {
//   const CustomCurrencyConverterScreen({super.key});
//
//   @override
//   _CustomCurrencyConverterScreenState createState() => _CustomCurrencyConverterScreenState();
// }
//
// class _CustomCurrencyConverterScreenState extends State<CustomCurrencyConverterScreen> {
//
//   final CurrencyConverterLogic _converterLogic = CurrencyConverterLogic();
//
//   @override
//   void initState() {
//     super.initState();
//     _converterLogic.baseCurrencyController.addListener(_converterLogic.onBaseCurrencyChanged);
//     _converterLogic.targetCurrencyController.addListener(_converterLogic.onTargetCurrencyChanged);
//   }
//
//   @override
//   void dispose() {
//     _converterLogic.baseCurrencyController.removeListener(_converterLogic.onBaseCurrencyChanged);
//     _converterLogic.targetCurrencyController.removeListener(_converterLogic.onTargetCurrencyChanged);
//     _converterLogic.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Currency Converter",
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButton<String>(
//               value: _converterLogic.baseCurrency,
//               items: _converterLogic.conversionRates.keys
//                   .map((currency) => DropdownMenuItem<String>(
//                 value: currency,
//                 child: Text(currency),
//               ))
//                   .toList(),
//               onChanged: (value) {
//                 setState(() {
//                   _converterLogic.onBaseCurrencyDropdownChanged(value);
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             TextFormField(
//               controller: _converterLogic.baseCurrencyController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "Enter amount",
//                 focusedBorder: OutlineInputBorder(),
//                 enabledBorder: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),
//             DropdownButton<String>(
//               value: _converterLogic.targetCurrency,
//               items: _converterLogic.conversionRates.keys
//                   .map((currency) => DropdownMenuItem<String>(
//                 value: currency,
//                 child: Text(currency),
//               ))
//                   .toList(),
//               onChanged: (value) {
//                 setState(() {
//                   _converterLogic.onTargetCurrencyDropdownChanged(value);
//                 });
//               },
//             ),
//             const SizedBox(height: 20),
//             TextFormField(
//               controller: _converterLogic.targetCurrencyController,
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(
//                 labelText: "Converted amount",
//                 focusedBorder: OutlineInputBorder(),
//                 enabledBorder: OutlineInputBorder(),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
