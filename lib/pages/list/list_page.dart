import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('列表组件'),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/listview');
            },
            child: Container(
              height: 40,
              child: Center(
                child: Text('垂直普通列表'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/listbuilder');
            },
            child: Container(
              height: 40,
              child: Center(
                child: Text('ListBuilder列表'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/list_separated');
            },
            child: Container(
              height: 40,
              child: Center(
                child: Text('List Separated列表'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/pull_refresh');
            },
            child: Container(
              height: 40,
              child: Center(
                child: Text('上拉加载数据'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/drop_down_paging');
            },
            child: Container(
              height: 40,
              child: Center(
                child: Text('下拉加载分页数据'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
