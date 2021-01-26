import 'package:flutter/material.dart';

class ListBuilderPage extends StatefulWidget {
  ListBuilderPage({Key key}) : super(key: key);

  @override
  _ListBuilderPageState createState() => _ListBuilderPageState();
}

class _ListBuilderPageState extends State<ListBuilderPage> {
  final List<String> items =
      List<String>.generate(100, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListBuilder列表'),
      ),
      body: ListView.builder(
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
      ),
    );
  }
}
