import 'package:cuidapet/app/core/ui/extensions/size_screen_extensions.dart';
import 'package:cuidapet/app/core/ui/extensions/theme_extension.dart';
import 'package:cuidapet/app/models/user_model.dart';
import 'package:cuidapet/app/modules/core/auth/auth_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

class AuthHomePage extends StatefulWidget {
  final AuthStore _authStore;

  const AuthHomePage({
    required AuthStore authStore,
    super.key,
  }) : _authStore = authStore;

  @override
  State<AuthHomePage> createState() => _AuthHomePageState();
}

class _AuthHomePageState extends State<AuthHomePage> {
  @override
  void initState() {
    reaction<UserModel?>(
      (_) => widget._authStore.userLogged,
      (userLogger) {
        if (userLogger != null && userLogger.email.isNotEmpty) {
          Modular.to.navigate('/home');
        } else {
          Modular.to.navigate('/auth/login');
        }
      },
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget._authStore.loadUserLogged();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
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
