import 'package:flutter/material.dart';
import 'package:inject_dependency/pages/login_page.dart';

import 'pages/home_page.dart';
import 'pages/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPage(),
      routes: {
        '/login': (context)=> const LoginPage(),
        '/home': (context)=> const HomePage()
      },
    );
  }
}