import 'package:bank/tes.dart';
import 'package:bank/views/auth/auth_page.dart';
import 'package:bank/views/pages/bank/lokasi_bank.dart';

import 'package:bank/views/pages/navigation.dart';
import 'package:bank/views/splashscreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
