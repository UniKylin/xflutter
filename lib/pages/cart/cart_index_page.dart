import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xflutter/provider/cart.dart';

class CartIndexPage extends StatefulWidget {
  CartIndexPage({Key key}) : super(key: key);

  @override
  _CartIndexPageState createState() => _CartIndexPageState();
}

class _CartIndexPageState extends State<CartIndexPage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车首页'),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              counter.increment();
            },
            child: Icon(Icons.add),
          ),
          Text("counter >>> ${counter.count}"),
        ],
      ),
    );
  }
}
