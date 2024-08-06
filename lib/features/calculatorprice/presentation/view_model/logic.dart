// currency_converter_logic.dart
import 'package:flutter/material.dart';

class CurrencyConverterLogic {
  final TextEditingController baseCurrencyController = TextEditingController();
  final TextEditingController targetCurrencyController =
      TextEditingController();

  final Map<String, double> conversionRates = {
    'دولار امريكى': 1, // base rate
    'جنيه مصرى': 50,
    'درهم امارتى': 110.0,
    // add more currencies and their rates here
  };

  String baseCurrency = 'دولار امريكى';
  String targetCurrency = 'جنيه مصرى';

  bool _isUpdatingBase = false;
  bool _isUpdatingTarget = false;

  void onBaseCurrencyChanged() {
    if (_isUpdatingTarget) return;
    final text1 = baseCurrencyController.text;
    final num1 = double.tryParse(text1);

    if (text1.isEmpty) {
      targetCurrencyController.text = '';
    } else if (num1 != null) {
      _isUpdatingBase = true;
      final conversionRate =
          conversionRates[targetCurrency]! / conversionRates[baseCurrency]!;
      targetCurrencyController.text =
          (num1 * conversionRate).toStringAsFixed(2);
      _isUpdatingBase = false;
    }
  }

  void onTargetCurrencyChanged() {
    if (_isUpdatingBase) return;
    final text2 = targetCurrencyController.text;
    final num2 = double.tryParse(text2);

    if (text2.isEmpty) {
      baseCurrencyController.text = '';
    } else if (num2 != null) {
      _isUpdatingTarget = true;
      final conversionRate =
          conversionRates[baseCurrency]! / conversionRates[targetCurrency]!;
      baseCurrencyController.text = (num2 * conversionRate).toStringAsFixed(2);
      _isUpdatingTarget = false;
    }
  }

  void onBaseCurrencyDropdownChanged(String? newValue) {
    if (newValue != null) {
      baseCurrency = newValue;
      onBaseCurrencyChanged();
    }
  }

  void onTargetCurrencyDropdownChanged(String? newValue) {
    if (newValue != null) {
      targetCurrency = newValue;
      onTargetCurrencyChanged();
    }
  }

  void dispose() {
    baseCurrencyController.dispose();
    targetCurrencyController.dispose();
  }
}
