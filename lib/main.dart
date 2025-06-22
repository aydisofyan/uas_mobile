import 'package:flutter/material.dart';
import 'package:uas_mobile/login.dart';
import 'package:uas_mobile/navigation.dart';
import 'package:uas_mobile/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/login': (context) => const LoginPage(),
        '/beranda': (context) => const NavigationPage(),
      },
      theme: ThemeData.dark(),
    );
  }
}
