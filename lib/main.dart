import 'package:flutter/material.dart';

import 'authentication/authenticaton_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter authentication using ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthenticationView(),
    );
  }
}
