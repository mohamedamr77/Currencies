import 'dart:convert';

class PriceOfCurrencyInBankModel {
  final int id;
  final String nameEn;
  final String nameAr;
  final String image;
  final double purchasingPrice;
  final double sellingPrice;
  final String lastUpdate;

  PriceOfCurrencyInBankModel({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.image,
    required this.purchasingPrice,
    required this.sellingPrice,
    required this.lastUpdate,
  });

  factory PriceOfCurrencyInBankModel.fromJson(Map<String, dynamic> json) {
    return PriceOfCurrencyInBankModel(
      id: json['id'],
      nameEn: json['name_en'],
      nameAr: json['name_ar'],
      image: json['image'],
      purchasingPrice: (json['purchasing_price'] as num).toDouble(),
      sellingPrice: (json['selling_price'] as num).toDouble(),
      lastUpdate: json['last_update'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name_en': nameEn,
      'name_ar': nameAr,
      'image': image,
      'purchasing_price': purchasingPrice,
      'selling_price': sellingPrice,
      'last_update': lastUpdate,
    };
  }

  @override
  String toString() {
    return 'CurrencyModel{id: $id, nameEn: $nameEn, nameAr: $nameAr, image: $image, purchasingPrice: $purchasingPrice, sellingPrice: $sellingPrice, lastUpdate: $lastUpdate}';
  }
}

