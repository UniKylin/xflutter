import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由购物车页'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
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
                  Navigator.pushNamed(context, '/route_pay');
                },
                child: Text('Push 到支付结算'),
              ),
              
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/bear', ModalRoute.withName('/ant'));
                },
                child: Text('PushNamedAndRemoveUntil Go Ant Page '),
              )
            ],
          ),
        ),
      ),
    );
  }
}
