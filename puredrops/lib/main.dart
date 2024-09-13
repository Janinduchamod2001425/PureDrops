import 'package:Puredrops/get_started_screen.dart';
import 'package:Puredrops/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PureDrops',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GetStartedScreen(),
      routes: {'/home': (context) => const HomeScreen()},
    );
  }
}
