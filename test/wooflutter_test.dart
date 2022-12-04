import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wooflutter/models/product.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  test(
    'API Test init',
    () async {
      String json = await loadAsset();

      print(json);

      Product product = Product.fromJson(json);

      print(product.toString());
    },
  );
}

Future<String> loadAsset() async {
  return await rootBundle.loadString('product.json');
}
