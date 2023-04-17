import 'package:flutter/material.dart';
import 'package:wooflutter/services/auth_service.dart';
import 'package:wooflutter/wooflutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Wooflutter Example')),
        body: const Center(
            child: WoofText(
          text: 'Hello, Wooflutter!',
        )),
      ),
    );
  }
}
