// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Font Awesome"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.apple, size: 80, color: Colors.redAccent,),
                SizedBox(width: 20,),
                FaIcon(FontAwesomeIcons.appStore, size: 80, color: Colors.redAccent,),
                SizedBox(width: 20,),
                FaIcon(FontAwesomeIcons.applePay, size: 80, color: Colors.redAccent,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.arrowRotateRight, size: 80, color: Colors.redAccent,),
                SizedBox(width: 20,),
                FaIcon(FontAwesomeIcons.arrowsSpin, size: 80, color: Colors.redAccent,),
                SizedBox(width: 20,),
                FaIcon(FontAwesomeIcons.arrowRotateLeft, size: 80, color: Colors.redAccent,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.binoculars, size: 80, color: Colors.redAccent,),
                SizedBox(width: 20,),
                FaIcon(FontAwesomeIcons.bell, size: 80, color: Colors.redAccent,),
                SizedBox(width: 20,),
                FaIcon(FontAwesomeIcons.bicycle, size: 80, color: Colors.redAccent,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

