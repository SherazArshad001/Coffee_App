import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

class FieldName extends StatelessWidget {
  final String fieldName;
  const FieldName({super.key, required this.fieldName});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Text(
          fieldName,
          style: const TextStyle(
            color: AppColor.primaryColor,
          ),
        ),
      ),
    );
  }
}
