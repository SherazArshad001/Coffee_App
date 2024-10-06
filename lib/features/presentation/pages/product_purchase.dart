// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_app/core/common_widgets/login_button.dart';
import 'package:coffee_app/features/presentation/pages/checkout_screen.dart';
import 'package:flutter/material.dart';

import 'package:coffee_app/core/common_widgets/base_screen.dart';
import 'package:coffee_app/features/presentation/widgets/app_appbar.dart';

class ProductDetailScreen extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  const ProductDetailScreen({
    super.key,
    required this.imagePath,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: Column(
        children: [
          const AppCustomAppBar(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'I t e m   D e t a i l s',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Image.asset(
              imagePath,
              width: 200,
              height: 200,
            ),
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "$name shots topped with hot  water create a light layer of crema culminating in this wonderfullyrich cup with depth and nuance.",
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 30),
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
              child: Center(
                child: Text(
                  price,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: LoginButton(
                buttonText: 'A d d  T o  B u y',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderSummaryScreen(
                        imagePath: imagePath,
                        name: name,
                        price: price,
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
