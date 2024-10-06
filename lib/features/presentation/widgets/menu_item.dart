import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;

  const MenuItem({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(imagePath),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            width: 250,
            height: 60,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
