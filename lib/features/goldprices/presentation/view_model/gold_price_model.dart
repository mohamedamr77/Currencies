class GoldPriceModel {
  final int? id;
  final String? name;
  final String? price;
  final String? date;

  GoldPriceModel({
    required this.id,
    required this.name,
    required this.price,
    required this.date,
  });

  // Factory constructor to create an instance from JSON
  factory GoldPriceModel.fromJson(Map<String, dynamic> json) {
    return GoldPriceModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      date: json['date'],
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'date': date,
    };
  }

  @override
  String toString() {
    return 'GoldPrice{id: $id, name: $name, price: $price, date: $date}';
  }
}
