import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

import 'package:coffee_app/core/common_widgets/base_screen.dart';
import 'package:coffee_app/core/common_widgets/login_button.dart';
import 'package:coffee_app/features/presentation/pages/payment_screen.dart';
import 'package:coffee_app/features/presentation/widgets/app_appbar.dart';

class OrderSummaryScreen extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;
  const OrderSummaryScreen({
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
          Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 1,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CardText(
                                    cardText: 'P r i c e',
                                  ),
                                  CardText(
                                    cardText: 'T a x  &  f e e s ',
                                  ),
                                  CardText(
                                    cardText: 'D e l i v e r y ',
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CardText(
                                    cardText: '$price ',
                                  ),
                                  const CardText(
                                    cardText: 'RS. 5 0 ',
                                  ),
                                  const CardText(
                                    cardText: 'RS. 3 0 ',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Expanded(
                            child: Divider(
                              thickness: 2,
                              color: AppColor.primaryColor,
                            ),
                          ),
                          const Row(
                            children: [
                              CardText(
                                cardText: 'T o t a l ',
                              ),
                              Spacer(),
                              Text('data'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: [
                        Image.asset(imagePath),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50.0),
                          child: Text(name),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                    child: LoginButton(
                      buttonText: 'Checkout',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentScreen(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardText extends StatelessWidget {
  final String cardText;

  const CardText({
    super.key,
    required this.cardText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      cardText,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: AppColor.primaryColor,
      ),
    );
  }
}
