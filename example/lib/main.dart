import 'package:flutter/material.dart';
import 'package:wooflutter/services/auth_service.dart';
import 'package:wooflutter/wooflutter.dart';

void main() {
  runApp(MyApp());
}

Future<void> auth() async {
  final authService = AuthService('https://yourapi.com');
  final token = await authService.login('user@example.com', 'password');
  final isLoggedIn = await authService.isLoggedIn(token);
  await authService.logout(token);
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
