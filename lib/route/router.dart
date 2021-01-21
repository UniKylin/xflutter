import 'package:flutter/material.dart';
import 'package:xflutter/pages/eventbus/event_emitter.dart';
import 'package:xflutter/pages/eventbus/event_page.dart';
import 'package:xflutter/pages/index_page.dart';
import 'package:xflutter/pages/linear_layout/linear_layout_page.dart';
import 'package:xflutter/pages/router/login.dart';
import 'package:xflutter/pages/router/home.dart';
import 'package:xflutter/pages/router/cart.dart';
import 'package:xflutter/pages/router/pay.dart';
import 'package:xflutter/pages/router/pay_result.dart';
import 'package:xflutter/pages/router/products.dart';

final routes = {
  '/': (context) => IndexPage(),
  '/linear_layout': (context) => LinearLayoutPage(),
  '/event_page': (context) => EventPage(),
  '/event_emitter': (context) => EventEmitterPage(),
  '/route_login': (context) => LoginPage(),
  '/route_home': (context) => HomePage(),
  '/route_products': (context) => ProductsPage(),
  '/route_cart': (context) => CartPage(),
  '/route_pay': (context) => PayPage(),
  '/route_pay_result': (context) => PayResultPage(),
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
