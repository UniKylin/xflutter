import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:xflutter/common/loading_widget.dart';
import 'package:xflutter/pages/loading/loading_page.dart';

class DropDownPaging extends StatefulWidget {
  DropDownPaging({Key key}) : super(key: key);

  @override
  _DropDownPagingState createState() => _DropDownPagingState();
}

class _DropDownPagingState extends State<DropDownPaging> {
  List<dynamic> datas = [];
  List<dynamic> _personList = [];

  ScrollController _scrollController = ScrollController();

  int currentPage = 1;
  int pageSize = 15;

  bool _flag = true;
  bool _hasMore = true;

  @override
  void initState() {
    super.initState();
    _fetchUsers();

    _scrollController.addListener(() {
      // print('---------> ${_scrollController.position.pixels}');
      // print('---------> max: ${_scrollController.position.maxScrollExtent}');
      if (_scrollController.position.pixels >
          _scrollController.position.maxScrollExtent - 20) {
        print('>>>>>>>>> 滑动到底部了加载新数据...');
        if (this._flag && this._hasMore) {
          _fetchUsers();
        }
      }
    });
  }

  _fetchUsers() async {
    setState(() {
      this._flag = false;
    });
    var apiUrl =
        'http://10.151.104.14:9000/users?current_page=${this.currentPage}&page_size=${this.pageSize}';
    print('>>>>>>>>> api url: ${apiUrl}');
    var options = BaseOptions(
      responseType: ResponseType.plain,
    );
    Dio dio = new Dio(options);
    Response response = await dio.get(apiUrl);
    List<dynamic> res = json.decode(response.toString());
    // print(res);
    // print(res.length);

    if (res.length < this.pageSize) {
      this.setState(() {
        this._personList.addAll(res);
        this._hasMore = false;
        this._flag = true;
      });
    } else {
      this.setState(() {
        this._personList.addAll(res);
        this.currentPage++;
        this._flag = true;
      });
    }
  }

  Widget _renderPersonList() {
    if (this._personList.length > 0) {
      return Container(
        child: ListView.separated(
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          itemCount: _personList.length,
          padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${index + 1} >>> ${_personList[index]['name']}'),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1,
              color: Colors.red,
            );
          },
        ),
      );
    } else {
      return LoadingWidget();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('上拉加载分页'),
      ),
      body: Stack(
        children: [
          _renderPersonList(),
        ],
      ),
    );
  }
}
