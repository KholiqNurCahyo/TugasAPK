import 'package:flutter/material.dart';
import 'pages/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizhard',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primaryColor: const Color(0xFF23206F),
        scaffoldBackgroundColor: const Color(0xFF23206F),
        fontFamily: 'Roboto',
      ),

      home: const MainPage(),
    );
  }
}