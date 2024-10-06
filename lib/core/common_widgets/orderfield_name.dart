import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

class OrderFieldName extends StatelessWidget {
  final String orderFieldname;
  const OrderFieldName({super.key, required this.orderFieldname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Text(
        orderFieldname,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
