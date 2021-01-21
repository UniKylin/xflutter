import 'package:flutter/material.dart';

class PayPage extends StatefulWidget {
  PayPage({Key key}) : super(key: key);

  @override
  _PayPageState createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由支付结算'),
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
                '在购物应用一旦用户完成了支付交易就应该从堆栈中删除所有与交易或购物车相关的页面，并且用户应该被带到支付结果确认页面,单击后退按钮应该只将它们带回到商品列表页面或者查看订单列表页面或者首页',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route_pay_result');
                },
                child: Text('Push 到支付结果页'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/route_pay_result', ModalRoute.withName('/route_products'));
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
