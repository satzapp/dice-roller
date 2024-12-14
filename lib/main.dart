import 'package:flutter/material.dart';
import 'package:myfantacycrypto/backgroud_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: BackgroundContainer(colors: [Colors.blue, Colors.indigo]),
      ),
    ),
  );
}
