class GoldPriceModel {
  final int id;
  final String name;
  final String icon;
  final String purchasingPrice;
  final String sellingPrice;

  GoldPriceModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.purchasingPrice,
    required this.sellingPrice,
  });

  // Factory constructor to create an instance from JSON
  factory GoldPriceModel.fromJson(Map<String, dynamic> json) {
    return GoldPriceModel(
      id: json['id'],
      name: json['name'],
      icon: json['icon'],
      purchasingPrice: json['purchasing_price'],
      sellingPrice: json['selling_price'],
    );
  }

  // Method to convert an instance to JSON (optional, useful for sending data back to the server)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'purchasing_price': purchasingPrice,
      'selling_price': sellingPrice,
    };
  }
}
