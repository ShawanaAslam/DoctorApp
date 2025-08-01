import 'package:flutter/material.dart';

class PaswordFormField extends StatefulWidget {
  PaswordFormField({super.key});

  @override
  State<PaswordFormField> createState() => _PaswordFormFieldState();
}

class _PaswordFormFieldState extends State<PaswordFormField> {
  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;

 // bool _obscureConfirm = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25),
      child: TextFormField(
        controller: passwordController,
        obscureText: _obscurePassword,
        decoration: InputDecoration(
          // labelText: 'Password',

          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              _obscurePassword ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter password';
          }
          if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
          return null;
        },
      ),
    );
  }
}
