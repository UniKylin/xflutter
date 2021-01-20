import 'package:flutter/material.dart';
import 'package:xflutter/pages/eventbus/event_emitter.dart';
import 'package:xflutter/pages/eventbus/event_page.dart';
import 'package:xflutter/pages/home_page.dart';
import 'package:xflutter/pages/linear_layout/linear_layout_page.dart';
import 'package:xflutter/pages/router/ant.dart';
import 'package:xflutter/pages/router/bear.dart';
import 'package:xflutter/pages/router/cat.dart';
import 'package:xflutter/pages/router/dog.dart';

final routes = {
  '/': (context) => HomePage(),
  '/linear_layout': (context) => LinearLayoutPage(),
  '/event_page': (context) => EventPage(),
  '/event_emitter': (context) => EventEmitterPage(),
  '/ant': (context) => AntPage(),
  '/bear': (context) => BearPage(),
  '/cat': (context) => CatPage(),
  '/dog': (context) => DogPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
