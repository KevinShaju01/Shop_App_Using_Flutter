import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/product_detail.dart';
import 'package:shop_app/screens/products_home.dart';

import 'provider/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
          routes: {productdetail.routename: (context) => productdetail()},
          title: 'My Shop App',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.black,
          ),
          home: const product_home()),
    );
  }
}
