import 'package:flutter/material.dart';
import 'package:project_ebook/login/components/body_login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyLogin(),
    );
  }
}
