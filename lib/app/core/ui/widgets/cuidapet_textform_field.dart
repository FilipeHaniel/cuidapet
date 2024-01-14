import 'package:cuidapet/app/core/ui/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CuidapetTextformField extends StatelessWidget {
  final String label;
  final bool obscureText;

  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  final ValueNotifier<bool> _obscureTextVN;

  CuidapetTextformField({
    required this.label,
    this.controller,
    this.validator,
    this.obscureText = false,
    super.key,
  }) : _obscureTextVN = ValueNotifier<bool>(obscureText);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: _obscureTextVN,
        builder: (_, obscureTextVNValue, child) {
          return TextFormField(
            controller: controller,
            validator: validator,
            obscureText: obscureTextVNValue,
            decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(fontSize: 15, color: Colors.black),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.grey),
              ),
              suffixIcon: obscureText
                  ? IconButton(
                      icon: Icon(
                        obscureTextVNValue ? Icons.lock : Icons.lock_open,
                        color: context.primaryColor,
                      ),
                      onPressed: () =>
                          _obscureTextVN.value = !obscureTextVNValue,
                    )
                  : null,
            ),
          );
        });
  }
}
