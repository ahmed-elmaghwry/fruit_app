import 'dart:io';

import 'package:fruit_hub/core/entities/product_entity.dart';

ProductEntity getDummyProduct() {
  return ProductEntity(
    name: 'Product',
    code: 'Code',
    description: 'Description',
    price: 10,
    expirationsMonths: 10,
    numberOfCalories: 10,
    unitAmount: 10,
    isOrganic: true,
    image: File(''),
    imageUrl: 'https://ezdgwtvgtcwuidfnhdlf.supabase.co/storage/v1/object/public/fruits_images/images/IMG_20250108_014319.jpg.jpg',
    isFeatured: true,
    reviews: [],
  );
}

List<ProductEntity> getDummyProducts() => List.generate(6, (index) => getDummyProduct());
