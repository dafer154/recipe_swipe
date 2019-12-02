import 'package:flutter/material.dart';
import 'package:recipe_swipe/pages/alert_page.dart';
import 'package:recipe_swipe/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromRGBO(229, 229, 229, 1),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      // onGenerateRoute: (RouteSettings settings) {
      //   print('Ruta llamada');
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => AlertPage());
      // },
    );
  }
}
