import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;

  const BaseScreen({super.key, required this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/coffee_background.png',
              fit: BoxFit.cover,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
