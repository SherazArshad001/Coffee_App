import 'package:flutter/material.dart';

class AuthScreenName extends StatelessWidget {
  final String authScreenName;
  const AuthScreenName({super.key, required this.authScreenName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Text(
        authScreenName,
        style: const TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
