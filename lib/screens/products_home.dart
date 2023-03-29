import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/widget/product_buildergrid.dart';

enum status {
  favorites,
  all;
}

class product_home extends StatefulWidget {
  const product_home({Key? key}) : super(key: key);

  @override
  State<product_home> createState() => _product_homeState();
}

class _product_homeState extends State<product_home> {
  var _showfav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("My Shop"),
        actions: [
          PopupMenuButton(
              onSelected: (status value) {
                setState(() {
                  if (value == status.favorites)
                    _showfav = true;
                  else
                    _showfav = false;
                });
              },
              icon: const Icon(
                Icons.more_vert_sharp,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: status.all,
                      child: Text("All"),
                    ),
                    const PopupMenuItem(
                      value: status.favorites,
                      child: Text("Favorites"),
                    )
                  ])
        ],
      ),
      body: productgridview(
        showfav: _showfav,
      ),
    );
  }
}
