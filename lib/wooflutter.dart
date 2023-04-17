library wooflutter;

import 'package:flutter/material.dart';

class WoofText extends StatelessWidget {
  final String text;

  const WoofText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Woof! $text',
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
