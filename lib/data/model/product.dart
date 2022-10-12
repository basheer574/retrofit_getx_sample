import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit_getx_sample/data/model/product_color.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  Product({
    required this.id,
    required this.brand,
    required this.name,
    required this.price,
    this.priceSign,
    this.currency,
    required this.imageLink,
    required this.productLink,
    required this.websiteLink,
    required this.description,
    required this.rating,
    required this.category,
    required this.productType,
    required this.tagList,
    required this.createdAt,
    required this.updatedAt,
    required this.productApiUrl,
    required this.apiFeaturedImage,
    required this.productColors,
  });

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'brand')
  final String? brand;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'price')
  final String? price;
  @JsonKey(name: 'price_sign')
  final dynamic? priceSign;
  @JsonKey(name: 'currency')
  final dynamic? currency;
  @JsonKey(name: 'image_link')
  final String? imageLink;
  @JsonKey(name: 'product_link')
  final String? productLink;
  @JsonKey(name: 'website_link')
  final String? websiteLink;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'rating')
  final double? rating;
  @JsonKey(name: 'category')
  final String? category;
  @JsonKey(name: 'product_type')
  final String? productType;
  @JsonKey(name: 'tag_list')
  final List<dynamic>? tagList;
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @JsonKey(name: 'product_api_url')
  final String? productApiUrl;
  @JsonKey(name: 'api_featured_image')
  final String? apiFeaturedImage;
  @JsonKey(name: 'product_colors')
  final List<ProductColor>? productColors;

  factory Product.fromJson(Map<String,dynamic> json) => _$ProductFromJson(json);
  Map<String,dynamic> toJson() => _$ProductToJson(this);
}

