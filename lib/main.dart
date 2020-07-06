import 'package:flutter/material.dart';
import 'package:fluttertestapp/ui/StartScreen.dart';

var routes = <String, WidgetBuilder>{
  "/start": (BuildContext context) => StartScreen(),
};

void main() {
  runApp(new MaterialApp(
      title: "Flutter test App",
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
      routes: routes));
}



