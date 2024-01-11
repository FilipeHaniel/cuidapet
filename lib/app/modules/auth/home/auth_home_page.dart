import 'package:cuidapet/core/ui/extensions/size_screen_extensions.dart';
import 'package:flutter/material.dart';

class AuthHomePage extends StatelessWidget {
  const AuthHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text('home page')),
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: 130.h,
          width: 162.w,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
