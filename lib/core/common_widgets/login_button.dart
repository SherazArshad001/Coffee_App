import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const LoginButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          backgroundColor: (buttonText == "Sign Up" ||
                  buttonText == "log In" ||
                  buttonText == 'H o m e')
              ? const Color(0xffffffff)
              : AppColor.primaryColor,
          foregroundColor: (buttonText == "Sign Up" ||
                  buttonText == "log In" ||
                  buttonText == 'H o m e')
              ? AppColor.primaryColor
              : const Color(0xffffffff),
          minimumSize: const Size(250, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: AppColor.primaryColor,
              width: 1,
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}
