// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../provider/products.dart';

class productoverview extends StatelessWidget {
  const productoverview({
    Key? key,
    required this.id,
  }) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    final ProductData = Provider.of<Products>(context, listen: false);
    final product = ProductData.Findid(id);
    return Scaffold(
        appBar: AppBar(
            title: Text(product.name, textAlign: TextAlign.center),
            backgroundColor: Colors.black));
  }
}
