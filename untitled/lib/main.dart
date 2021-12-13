import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(elevation: 0)),
      home: const HomePage()));
}
