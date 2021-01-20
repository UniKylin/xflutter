import 'package:flutter/material.dart';

class CatPage extends StatefulWidget {
  CatPage({Key key}) : super(key: key);

  @override
  _CatPageState createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat Page'),
        backgroundColor: Colors.amberAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  text: 'Cat Page',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dog');
                },
                child: Text('Push Go Dog Page '),
              )
            ],
          ),
        ),
      ),
    );
  }
}
