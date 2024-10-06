import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

class PaymentScreenTextField extends StatelessWidget {
  final String hintText;
  const PaymentScreenTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        style: const TextStyle(
          color: AppColor.primaryColor,
        ),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          fillColor: AppColor.backgroundColor,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: AppColor.primaryColor,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: AppColor.primaryColor,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: AppColor.primaryColor,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          filled: true,
        ),
      ),
    );
  }
}
