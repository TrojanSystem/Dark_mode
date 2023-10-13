import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:wallet/theme_provider.dart';
import 'package:wallet/homePage.dart';
void main() {
  runApp(ChangeNotifierProvider(
    create: (ctx) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,

      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

