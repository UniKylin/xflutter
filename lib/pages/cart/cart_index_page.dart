import 'package:flutter/material.dart';

class CartIndexPage extends StatefulWidget {
  CartIndexPage({Key key}) : super(key: key);

  @override
  _CartIndexPageState createState() => _CartIndexPageState();
}

class _CartIndexPageState extends State<CartIndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车首页'),
      ),
      body: Text('购物车首页...'),
    );
  }
}
