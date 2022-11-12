import 'package:flutter/material.dart';
import 'package:project_ebook/ebook/screens/ebook_screen.dart';
import 'package:project_ebook/welcome/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ebook',
      theme: ThemeData(
        // textTheme: TextTheme()
        primaryColor: Colors.white,
        // scaffoldBackgroundColor: Colors.white,
        //primarySwatch: Colors.blue,
      ),
      home: const WellcomeScreen(),
      //home: const EbookScreen(),
    );
  }
}
