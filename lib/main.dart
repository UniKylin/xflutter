import 'package:dokit/dokit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xflutter/pages/index_page.dart';
import 'package:xflutter/provider/cart.dart';
import 'package:xflutter/route/router.dart';

void main() {
  DoKit.runApp(
    app: DoKitApp(MyApp()),
    useInRelease: true,
    releaseAction: () => {},
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: IndexPage(),
        onGenerateRoute: onGenerateRoute,
        initialRoute: '/',
      ),
    );
  }
}
