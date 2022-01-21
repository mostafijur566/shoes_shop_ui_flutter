import 'package:flutter/material.dart';
import 'package:shoes_shop_ui_flutter/ui_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UiScreen(),
    );
  }
}

