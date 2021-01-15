import 'package:flutter/material.dart';
import 'package:xflutter/pages/eventbus/event_bus.dart';

class EventPage extends StatefulWidget {
  EventPage({Key key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  void initState() {
    super.initState();
    allBus.on<EmitterBusEvent>().listen((event) {
      print('>>>>>>>>> Event listener invoked...');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Event Bus Page',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: InkWell(
              onTap: () {
                // invoke event
                Navigator.pushNamed(context, '/event_emitter');
              },
              child: Center(
                child: Text('To Invoke Event Page'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
