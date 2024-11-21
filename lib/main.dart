import 'package:flutter/material.dart';
import 'package:flutter_jobapp/constants/colors.dart';
import 'package:flutter_jobapp/view/pages/auth_page/login_page.dart';
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
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: lightGray,
      ),
      home: LoginPage(),
    );
  }
}
