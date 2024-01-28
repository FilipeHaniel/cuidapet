import 'package:cuidapet/app/core/ui/icons/cuidapet_icons.dart';
import 'package:cuidapet/app/core/ui/widgets/cuidapet_default_button.dart';
import 'package:cuidapet/app/core/ui/widgets/cuidapet_textform_field.dart';
import 'package:cuidapet/app/core/ui/widgets/rounded_button_with_icon.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final testeEC = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login page')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CuidapetTextformField(label: 'Login'),
              const Icon(CuidapetIcons.facebook),
              const Icon(CuidapetIcons.google),
              RoundedButtonWithIcon(
                label: 'Facebook',
                width: 200,
                color: Colors.red,
                icon: CuidapetIcons.facebook,
                onTap: () {},
              ),
              CuidapetDefaultButton(
                label: 'Entrar',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
