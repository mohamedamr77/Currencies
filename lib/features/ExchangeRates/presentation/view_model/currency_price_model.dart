import 'dart:convert';
// Define the CurrencyPrice model class
class CurrencyPriceModel {
  final int id;
  final String name;
  final String? icon;
  final String purchasingPrice;
  final String sellingPrice;

  CurrencyPriceModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.purchasingPrice,
    required this.sellingPrice,
  });

  // Factory constructor to create a CurrencyPrice instance from JSON
  factory CurrencyPriceModel.fromJson(Map<String, dynamic> json) {
    return CurrencyPriceModel(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      purchasingPrice: json['purchasing_price'],
      sellingPrice: json['selling_price'],
    );
  }

  // Method to convert a CurrencyPrice instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'purchasing_price': purchasingPrice,
      'selling_price': sellingPrice,
    };
  }

  @override
  String toString() {
    return 'CurrencyPrice(id: $id, name: $name, icon: $icon, purchasingPrice: $purchasingPrice, sellingPrice: $sellingPrice)';
  }
}

