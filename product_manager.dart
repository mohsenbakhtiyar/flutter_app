import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProducts;

  ProductManager({this.startingProducts = 'Sweets Tester'}) {
    print('[productManager widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[productManager widget] creteState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[productManager State] initState()');
    _products.add(widget.startingProducts);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProductManager oldWidget) {
    print('[productManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[productManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
