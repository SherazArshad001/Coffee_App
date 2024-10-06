import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppCustomAppBar extends StatelessWidget {
  const AppCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        height: 170,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/coffee_main_logo.png',
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
