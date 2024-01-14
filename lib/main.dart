import 'package:flutter/material.dart';
import 'package:resume_console/my_home_page.dart';
import 'package:resume_console/services/constants/k_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume Console',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: KColors.kPurple,
        ),
      ),
      home: const MyHomePage(
        title: 'Resume Console',
      ),
    );
  }
}
