import 'package:coffee_app/core/common_widgets/app_textfield.dart';
import 'package:coffee_app/core/common_widgets/base_screen.dart';
import 'package:coffee_app/core/common_widgets/login_button.dart';
import 'package:coffee_app/core/common_widgets/screen_name.dart';
import 'package:coffee_app/core/common_widgets/small_button.dart';
import 'package:coffee_app/features/presentation/pages/app_home_screen.dart';
import 'package:coffee_app/features/presentation/widgets/field_name.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return BaseScreen(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const AuthScreenName(
                authScreenName: 'Sign Up',
              ),
              const FieldName(
                fieldName: 'Name',
              ),
              CustomTextField(
                hintText: 'Enter Your Name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Name ";
                  } else if (value.length < 3) {
                    return "Name should be at least 3 characters long";
                  }

                  return null;
                },
              ),
              const FieldName(
                fieldName: 'Email',
              ),
              CustomTextField(
                hintText: 'Enter Your Email',
                validator: (value) {
                  final emailRegex = RegExp(
                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  } else if (!emailRegex.hasMatch(value)) {
                    return 'Invalid email';
                  }
                  return null;
                },
              ),
              const FieldName(
                fieldName: 'Password',
              ),
              CustomTextField(
                obscureText: true,
                hintText: 'Enter Your Password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Your Password ";
                  } else if (value.length < 6) {
                    return "Password should be at least 6 characters long";
                  }

                  return null;
                },
              ),
              LoginButton(
                buttonText: "Sign Up",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AppHomeScreen(),
                      ),
                    );
                  }
                },
              ),
              const Spacer(),
              const Text("Already have an Account"),
              const SmallButton(
                buttonText: 'Log In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
