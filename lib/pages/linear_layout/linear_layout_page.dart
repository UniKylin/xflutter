import 'package:flutter/material.dart';

class LinearLayoutPage extends StatefulWidget {
  LinearLayoutPage({Key key}) : super(key: key);

  @override
  _LinearLayoutPageState createState() => _LinearLayoutPageState();
}

class _LinearLayoutPageState extends State<LinearLayoutPage> {
  final GlobalKey globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('线性布局'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: width,
            height: height / 4,
            color: Colors.red,
            child: Text('Container text...'),
          ),
          Text('Ant Line'),
          Text('Bear Line'),
          Text('Cat Line'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: height / 4,
                  color: Colors.blue,
                  child: Text('Ant Row'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: height / 3,
                  color: Colors.pink,
                  child: Text('Ant Row'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                  child: Text('Ant Row'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
