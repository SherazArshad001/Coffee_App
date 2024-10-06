import 'package:coffee_app/features/presentation/pages/log_in.dart';
import 'package:coffee_app/features/presentation/pages/sign_up.dart';
import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String buttonText;

  const SmallButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          foregroundColor: Colors.white,
          minimumSize: const Size(80, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          if (buttonText == 'Sign Up') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (contex) => const SignUpScreen(),
              ),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (contex) => const LogInScreen(),
              ),
            );
          }
        },
        child: Text(buttonText),
      ),
    );
  }
}
