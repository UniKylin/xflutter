import 'package:flutter/material.dart';

class ListSeparatedPage extends StatefulWidget {
  ListSeparatedPage({Key key}) : super(key: key);

  @override
  _ListSeparatedPageState createState() => _ListSeparatedPageState();
}

class _ListSeparatedPageState extends State<ListSeparatedPage> {
  final List<String> items =
      List<String>.generate(100, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListBuilder列表'),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
            leading: Icon(Icons.add_circle_outline),
            onTap: () {
              print('>>>>>>>>> click: ${items[index]}');
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            color: Colors.blue,
          );
        },
      ),
    );
  }
}
