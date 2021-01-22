import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Demo'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                //
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return new AlertDialog(
                      title: new Text('自定义标题'),
                      content: new SingleChildScrollView(
                        child: new ListBody(
                          children: <Widget>[
                            new Text('内容 1'),
                            new Text('内容 2'),
                            new Text('内容 3'),
                            new Text('内容 4'),
                            new Text('内容 5'),
                            new Text('内容 6'),
                            new Text('内容 7'),
                            new Text('内容 8'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text('确定'),
                          onPressed: () {
                            Navigator.of(context).pop(1111);
                          },
                        ),
                      ],
                    );
                  },
                ).then((value) {
                  print('>>>>>>>>> value: ${value}');
                });
              },
              child: Text('弹窗'),
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return new SimpleDialog(
                      title: new Text('选择'),
                      children: <Widget>[
                        new SimpleDialogOption(
                          child: new Text('选项 1'),
                          onPressed: () {
                            Navigator.of(context).pop(1111);
                          },
                        ),
                        new SimpleDialogOption(
                          child: new Text('选项 2'),
                          onPressed: () {
                            Navigator.of(context).pop(2222222);
                          },
                        ),
                      ],
                    );
                  },
                ).then((val) {
                  print('>>>>>>>>> val: ${val}');
                });
              },
              child: Text('Simple Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
