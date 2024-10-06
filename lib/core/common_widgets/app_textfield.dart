import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType textInputType;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            
          fillColor: AppColor.primaryColor,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColor.backgroundColor,
            fontWeight: FontWeight.w100,
            fontSize: 13,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
        ),
        obscureText: obscureText,
        textInputAction: TextInputAction.next,
        validator: validator,
      ),
    );
  }
}
