// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      brand: json['brand'] == null ? '0' : json['brand'] as String,
      name: json['name'] as String,
      price: json['price'] == null? '0' : json['price'] as String,
      priceSign: json['price_sign'],
      currency: json['currency'],
      imageLink: json['image_link'] as String,
      productLink: json['product_link'] as String,
      websiteLink: json['website_link'] as String,
      description: json['description'] == null ? '0' : json['description'] as String,
      rating: (json['rating'] == null ? 0.0 : json['rating'] as num).toDouble(),
      category: (json['category'] == null ? '0' : json['category'] as String).toString(),
      productType: json['product_type'] as String,
      tagList: json['tag_list'] as List<dynamic>,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      productApiUrl: json['product_api_url'] as String,
      apiFeaturedImage: json['api_featured_image'] as String,
      productColors: (json['product_colors'] as List<dynamic>)
          .map((e) => ProductColor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'name': instance.name,
      'price': instance.price,
      'price_sign': instance.priceSign,
      'currency': instance.currency,
      'image_link': instance.imageLink,
      'product_link': instance.productLink,
      'website_link': instance.websiteLink,
      'description': instance.description,
      'rating': instance.rating,
      'category': instance.category,
      'product_type': instance.productType,
      'tag_list': instance.tagList,
      'created_at': instance.createdAt.toString(),
      'updated_at': instance.updatedAt.toString(),
      'product_api_url': instance.productApiUrl,
      'api_featured_image': instance.apiFeaturedImage,
      'product_colors': instance.productColors,
    };
