import 'dart:async';

import 'package:coffee_app/core/common_widgets/base_screen.dart';
import 'package:coffee_app/features/presentation/pages/log_in.dart';
import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppSplashScreen extends StatelessWidget {
  const AppSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LogInScreen()),
      );
    });
    return BaseScreen(
      child: Column(
        children: [
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'lette',
              style: TextStyle(
                fontFamily: 'Montez',
                color: AppColor.primaryColor,
                fontSize: 60,
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 530,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/coffee_main_logo.png',
                    height: 400,
                  ),
                ),
                const Text(
                  'S  I  N  C  E     1  9  8  9',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffffffff),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
