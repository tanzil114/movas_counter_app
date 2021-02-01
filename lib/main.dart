import 'package:flutter/material.dart';
import 'package:movas/config/config.dart';
import 'package:movas_counter_app/provider/provider.dart';
import 'package:movas_counter_app/router/router.dart';
import 'package:provider/provider.dart';

void main() {
  moveAss(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: router.calculateAllRoutes,
        initialRoute: router.initialRoute,
      ),
    );
  }
}
