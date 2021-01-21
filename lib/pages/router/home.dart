import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由首页'),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
              Center(
                child: Text(
                  '首页',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 22,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/route_products');
                },
                child: Text('PushReplacementNamed 商品页'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/route_products');
                },
                child: Text('PopAndPushNamed 商品页'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/route_products');
                },
                child: Text('Push 商品页'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
