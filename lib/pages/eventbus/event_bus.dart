import 'package:event_bus/event_bus.dart';

EventBus allBus = EventBus();

// emitter event class
class EmitterBusEvent {
  String command;

  EmitterBusEvent(String command) {
    this.command = command;
  }
}
