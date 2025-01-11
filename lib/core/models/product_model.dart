import 'dart:io';
import 'package:fruit_hub/core/entities/review_entity.dart';

import '../entities/product_entity.dart';
import '../helper_functions/get_avg_rating.dart';
import 'review_model.dart';

class ProductModel {
  final String name;
  final String code;
  final String description;
  final num price;
  final File image;
  final bool isFeatured;
  final String imageUrl;
  final int expirationsMonths;
  final bool isOrganic;
  final int numberOfCalories;
  final num avgRating;

  final num ratingCount = 0;
  final int unitAmount;
  final int sellingCount;
  final List<ReviewModel> reviews;

  ProductModel(
      {required this.avgRating,
      required this.name,
      required this.code,
      required this.description,
      required this.expirationsMonths,
      required this.numberOfCalories,
      required this.unitAmount,
      required this.reviews,
      required this.price,
      required this.sellingCount,
      required this.isOrganic,
      required this.image,
      required this.isFeatured,
     required this.imageUrl});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      imageUrl: json['imageUrl'],
      avgRating:0.0,
      name: json['name'],
      code: json['code'],
      sellingCount: json['sellingCount'],
      description: json['description'],
      price: json['price'],
      expirationsMonths: json['expirationsMonths'],
      numberOfCalories: json['numberOfCalories'],
      unitAmount: json['unitAmount'],
      isOrganic: json['isOrganic'],
      image: File(json['imageUrl']),
      isFeatured: json['isFeatured'],
      reviews: List<ReviewModel>.from(json['reviews']
          .map((reviewJson) => ReviewModel.fromJson(reviewJson))),
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      name: name,
      code: code,
      description: description,
      price: price,
      expirationsMonths: expirationsMonths,
      numberOfCalories: numberOfCalories,
      unitAmount: unitAmount,
      isOrganic: isOrganic,
      image: image,
      isFeatured: isFeatured,
      reviews: reviews.map((review) => review.toEntity()).toList(),

      imageUrl: imageUrl,
    );
  }

  toJson() {
    return {
      'name': name,
      'code': code,
      'sellingCount': sellingCount,
      'description': description,
      'price': price,
      'isFeatured': isFeatured,
      'imageUrl': imageUrl,
      'expirationsMonths': expirationsMonths,
      'numberOfCalories': numberOfCalories,
      'unitAmount': unitAmount,
      'isOrganic': isOrganic,
      'reviews': reviews.map((e) => e.toJson()).toList()
    };
  }
}
