import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

import '../../data/model/product.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key,required this.products}) : super(key: key);
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: products.length,
      padding: const EdgeInsets.all(8),
      itemBuilder: (context,index){
        return ListTile(
          title: CachedNetworkImage(
            imageUrl: products[index].imageLink.toString(),
            progressIndicatorBuilder: (context,url,downloadProgress)=>
            CircularProgressIndicator(value: downloadProgress.progress),
            errorWidget: (context,url,error) => const Icon(Icons.error),
          )
        );
      },
    );
  }
}
