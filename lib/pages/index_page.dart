import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xflutter/pages/cart/cart_index_page.dart';
import 'package:xflutter/provider/cart.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '案例首页',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              //
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartIndexPage(),
                ),
              );
            },
            child: Center(
              child: Text('购物车案例'),
            ),
          ),
          InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => LinearLayoutPage(),
              //   ),
              // );
              Navigator.pushNamed(context, '/linear_layout');
            },
            child: Center(
              child: Text('线性布局案例'),
            ),
          ),
          Text("counter >>> ${counter.count}"),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/event_page');
              },
              child: Text('EventBus'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/route_login');
              },
              child: Text('路由模拟'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/dialog');
              },
              child: Text('弹窗'),
            ),
          ),
        ],
      ),
    );
  }
}
