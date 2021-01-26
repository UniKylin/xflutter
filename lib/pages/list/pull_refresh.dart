import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class PullRefreshPage extends StatefulWidget {
  PullRefreshPage({Key key}) : super(key: key);

  @override
  _PullRefreshPageState createState() => _PullRefreshPageState();
}

class _PullRefreshPageState extends State<PullRefreshPage> {
  var _items = List<String>();

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  _fetchData() async {
    for (int i = 0; i < 20; i++) {
      _items.insert(_items.length, '第${_items.length}原始数据');
    }
  }

  Future<void> _onRefresh() async {
    await Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        _items.clear();
        for (int i = 0; i < 20; i++) {
          _items.insert(_items.length, '第${_items.length}下拉刷新数据');
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('下拉刷新上拉加载'),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {
              //
              print('>>>>>>>>> invoke search...');
            },
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${_items[index]}'),
            );
          },
          itemCount: _items.length,
          separatorBuilder: (context, index) {
            return Divider(
              height: 1,
              color: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
