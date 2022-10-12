import 'package:json_annotation/json_annotation.dart';

part 'product_color.g.dart';
@JsonSerializable()
class ProductColor {
  ProductColor({
    required this.hexValue,
    required this.colourName,
  });

  @JsonKey(name: 'hex_value')
  final String hexValue;
  @JsonKey(name: 'colour_name')
  final String colourName;

  factory ProductColor.fromJson(Map<String,dynamic> json) => _$ProductColorFromJson(json);
  Map<String,dynamic> toJson() => _$ProductColorToJson(this);
}