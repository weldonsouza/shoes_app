import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return MaterialApp(
      title: 'Shoes App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
