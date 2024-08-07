import 'dart:convert';
class BankModel {
  final String BankName;
  final String image;
  final double highestPurchasePrice;
  final Currency currency;

  BankModel({
    required this.BankName,
    required this.image,
    required this.highestPurchasePrice,
    required this.currency,
  });

  // Factory constructor to create a Bank instance from JSON
  factory BankModel.fromJson(Map<String, dynamic> json) {
    return BankModel(
      BankName: json['Bank_name'],
      image: json['image'],
      highestPurchasePrice: json['highest_purchase_price'],
      currency: Currency.fromJson(json['currency']),
    );
  }

  // Method to convert a Bank instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'Bank_name': BankName,
      'image': image,
      'highest_purchase_price': highestPurchasePrice,
      'currency': currency.toJson(),
    };
  }

  @override
  String toString() {
    return 'Bank(BankName: $BankName, image: $image, highestPurchasePrice: $highestPurchasePrice, currency: $currency)';
  }
}

// Define the Currency model class
class Currency {
  final int id;
  final String name;
  final String image;
  final double priceInEgp;
  final String symbol;

  Currency({
    required this.id,
    required this.name,
    required this.image,
    required this.priceInEgp,
    required this.symbol,
  });

  // Factory constructor to create a Currency instance from JSON
  factory Currency.fromJson(Map<String, dynamic> json) {
    return Currency(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      priceInEgp: json['price_in_egp'],
      symbol: json['symbol'],
    );
  }

  // Method to convert a Currency instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'price_in_egp': priceInEgp,
      'symbol': symbol,
    };
  }

  @override
  String toString() {
    return 'Currency(id: $id, name: $name, image: $image, priceInEgp: $priceInEgp, symbol: $symbol)';
  }
}
