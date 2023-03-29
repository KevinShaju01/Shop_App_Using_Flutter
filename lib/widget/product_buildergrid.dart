// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/widget/product_grid.dart';

import '../provider/products.dart';

class productgridview extends StatelessWidget {
  final bool showfav;
  const productgridview({
    Key? key,
    required this.showfav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductData = Provider.of<Products>(context);
    final product = showfav ? ProductData.FavItems : ProductData.items;
    return GridView.builder(
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, mainAxisSpacing: 2, crossAxisSpacing: 2),
        itemCount: product.length,
        itemBuilder: (context, index) => ChangeNotifierProvider.value(
              value: product[index],
              child: const productgrid(),
            ));
  }
}
