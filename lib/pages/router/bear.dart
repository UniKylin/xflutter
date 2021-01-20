import 'package:flutter/material.dart';

class BearPage extends StatefulWidget {
  BearPage({Key key}) : super(key: key);

  @override
  _BearPageState createState() => _BearPageState();
}

class _BearPageState extends State<BearPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bear Page'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  text: 'Bear Page',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/cat');
                },
                child: Text('PushReplacementNamed Go Cat Page'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/cat');
                },
                child: Text('PopAndPushNamed Go Cat Page '),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cat');
                },
                child: Text('Push Go Cat Page '),
              )
            ],
          ),
        ),
      ),
    );
  }
}
