import 'package:flutter/material.dart';
import 'package:livetest10/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'livetest10',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: const AppBarTheme(color: Colors.blue,
            titleTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22)
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}