// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/product_detail.dart';

import '../provider/product.dart';

class productgrid extends StatelessWidget {
  const productgrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, productdetail.routename,
                arguments: product.id);
          },
          child: GridTile(
              footer: GridTileBar(
                title: Text(
                  product.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20),
                ),
                backgroundColor: Colors.black54,
                leading: Consumer<Product>(
                  builder: (context, value, child) => IconButton(
                    onPressed: () {
                      product.Favstatus();
                    },
                    icon: !product.isfavorite
                        ? const Icon(Icons.favorite_border_outlined)
                        : const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shop),
                  splashColor: Colors.transparent,
                ),
              ),
              child: Image(
                image: NetworkImage(product.image),
                fit: BoxFit.fill,
              )),
        ),
      ),
    );
  }
}
