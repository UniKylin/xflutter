import 'package:flutter/material.dart';
import 'package:xflutter/common/loading_widget.dart';

class LoadingPage extends StatefulWidget {
  LoadingPage({Key key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading Page'),
      ),
      body: LoadingWidget(),
    );
  }
}
