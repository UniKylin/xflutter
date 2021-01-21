import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  ProductsPage({Key key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由商品页'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        leading: InkWell(
          onTap: () => {
            Navigator.of(context).pop(),
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Column(
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route_cart');
                },
                child: Text('Push 到购物车'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
