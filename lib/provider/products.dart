import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
        id: "a",
        name: "Stephen Curry",
        price: 10000,
        image:
            "https://nypost.com/wp-content/uploads/sites/2/2022/06/1403383880.jpg"),
    Product(
        id: "b",
        name: "Kobe Bryant",
        price: 10000,
        image:
            "https://ca-times.brightspotcdn.com/dims4/default/3ef8a0a/2147483647/strip/true/crop/1658x2068+0+0/resize/1200x1497!/quality/80/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Fd7%2F45%2F56d5fb5240759e08ca3b4403122c%2Fla-sp-kobe-drawing.JPG"),
    Product(
        id: "c",
        name: "Mikal Bridges",
        price: 9000,
        image:
            "https://cdn.vox-cdn.com/thumbor/hjy9KfZDpy5kMhUrgNC_YLH-V-I=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/24496995/1248008577.jpg"),
    Product(
        id: "d",
        name: "Luka Doncic",
        price: 9000,
        image:
            "https://s7d2.scene7.com/is/image/TWCNews/nuggets_mavericksap_11192022"),
    Product(
        id: "e",
        name: "Devin Booker",
        price: 9500,
        image:
            "https://www.si.com/.image/t_share/MTkzMTUzNTc1Nzg5MDc4MDk2/devin-booker.png"),
    Product(
        id: "f",
        name: "Jayson Tatum",
        price: 9500,
        image:
            "https://on3static.com/cdn-cgi/image/height=417,width=795,quality=90,fit=cover,gravity=0.5x0.5/uploads/dev/assets/cms/2022/05/27205733/Jayson-Tatum-1.jpg")
  ];
  List<Product> get items {
    return [..._items];
  }

  List<Product> get FavItems {
    return _items.where((element) => element.isfavorite == true).toList();
  }

  Product Findid(String id) {
    return _items.firstWhere((element) => element.id == id);
  }
}
