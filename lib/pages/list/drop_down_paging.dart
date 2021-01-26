import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DropDownPaging extends StatefulWidget {
  DropDownPaging({Key key}) : super(key: key);

  @override
  _DropDownPagingState createState() => _DropDownPagingState();
}

class _DropDownPagingState extends State<DropDownPaging> {
  final List<String> _items = List<String>.generate(100, (index) => '第${index + 1}个数据');

  List<dynamic> datas;

  @override
  void initState() {
    super.initState();
    _fetchUsers();
  }

  _fetchUsers() async {
    var options = BaseOptions(
      responseType: ResponseType.plain,
    );
    Dio dio = new Dio(options);
    Response response = await dio.get('http://192.168.1.6:9000/users');
    List<dynamic> res = json.decode(response.toString());
    print(res);

    // this.setState(() {
    //   datas = res;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('上拉加载分页'),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_items[index]),
          );
        },
      ),
    );
  }
}
