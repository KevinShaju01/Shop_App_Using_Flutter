import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String id;
  final String name;
  final double price;
  final String image;
  bool isfavorite;

  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.image,
      this.isfavorite = false});
  void Favstatus() {
    isfavorite = !isfavorite;
    notifyListeners();
  }
}
