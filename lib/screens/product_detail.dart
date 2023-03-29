import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/product.dart';

import '../provider/products.dart';
import '../widget/product_overview.dart';

class productdetail extends StatelessWidget {
  productdetail({Key? key}) : super(key: key);
  static const routename = "Product1";
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as String;

    return productoverview(id: args);
  }
}
