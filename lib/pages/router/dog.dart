import 'package:flutter/material.dart';

class DogPage extends StatefulWidget {
  DogPage({Key key}) : super(key: key);

  @override
  _DogPageState createState() => _DogPageState();
}

class _DogPageState extends State<DogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dog Page'),
        backgroundColor: Colors.deepOrange,
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
                  Navigator.pushNamedAndRemoveUntil(context, '/ant', (Route<dynamic> route) => false);
                },
                child: Text('PushNamedAndRemoveUntil Go Ant Page '),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/bear', ModalRoute.withName('/ant'));
                },
                child: Text('PushNamedAndRemoveUntil Go Ant Page '),
              )
            ],
          ),
        ),
      ),
    );
  }
}
