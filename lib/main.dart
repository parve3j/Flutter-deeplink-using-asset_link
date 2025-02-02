import 'package:flutter/material.dart';
import 'package:uni_link/deep_link_listener.dart';
import 'package:uni_link/pages/details_screen.dart';
import 'package:uni_link/pages/home_screen.dart';
import 'package:uni_link/pages/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const HomeScreen(),
        '/details': (context) => const DetailsScreen(),
      },
      home: DeepLinkListener(child: const SplashScreen()),
    );
  }
}

