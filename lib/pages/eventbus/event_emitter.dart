import 'package:flutter/material.dart';
import 'package:xflutter/pages/eventbus/event_bus.dart';

class EventEmitterPage extends StatefulWidget {
  EventEmitterPage({Key key}) : super(key: key);

  @override
  _EventEmitterPageState createState() => _EventEmitterPageState();
}

class _EventEmitterPageState extends State<EventEmitterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Event Bus Emitter Page',
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
                // invoke bus
                allBus.fire(EmitterBusEvent('>>>>>>>>> invoke event bus'));
                Navigator.pushNamed(context, '/event_page');
              },
              child: Center(
                child: Text(
                  'Go触发Event事件页面',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
