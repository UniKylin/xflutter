import 'package:flutter/material.dart';

class PayResultPage extends StatefulWidget {
  PayResultPage({Key key}) : super(key: key);

  @override
  _PayResultPageState createState() => _PayResultPageState();
}

class _PayResultPageState extends State<PayResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由支付结果页'),
        centerTitle: true,
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
              Text(
                '在直接结果确认页面一般用户需要通过后退回到商品列表页面，或者订单结果页面',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/route_products', ModalRoute.withName('/route_home'));
                },
                child: Text('PushNamedAndRemoveUntil 到商品列表页'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
