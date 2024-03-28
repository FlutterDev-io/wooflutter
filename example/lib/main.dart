import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          body: Center(
              child: IconButton(
        icon: const Icon(Icons.shopping_cart),
        onPressed: () {
          // Launch the URL
          _launchUrl();
        },
      ))),
    );
  }

  final Uri _url = Uri.parse(
      'https://alexbordei.dev/wc-auth/v1/authorize?app_name=WooFlutter&scope=read_write&user_id=null&return_url=https://alexbordei.dev&callback_url=https://eoagzph1fbqrz4r.m.pipedream.net');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
