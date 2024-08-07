// Define the Price class
class CurrencyPriceModel {
  final int id;
  final String name;
  final String priceInEgp;
  final String symbol;
  final String image;

  CurrencyPriceModel({
    required this.id,
    required this.name,
    required this.priceInEgp,
    required this.symbol,
    required this.image,
  });

  // Factory constructor to create an instance from JSON
  factory CurrencyPriceModel.fromJson(Map<String, dynamic> json) {
    return CurrencyPriceModel(
      id: json['id'],
      name: json['name'],
      priceInEgp: json['price_in_egp'],
      symbol: json['symbol'],
      image: json['image'],
    );
  }

  // Convert instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price_in_egp': priceInEgp,
      'symbol': symbol,
      'image': image,
    };
  }
}
