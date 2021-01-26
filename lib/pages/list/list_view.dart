import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('列表'),
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
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
        children: [
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Flutter跨平台开发...'),
          ),
        ],
      ),
    );
  }
}
