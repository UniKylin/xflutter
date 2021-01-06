import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xflutter/pages/cart/cart_index_page.dart';
import 'package:xflutter/provider/cart.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          Text("counter >>> ${counter.count}"),
        ],
      ),
    );
  }
}
