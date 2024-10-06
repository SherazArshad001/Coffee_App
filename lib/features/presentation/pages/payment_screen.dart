import 'package:coffee_app/core/common_widgets/base_screen.dart';
import 'package:coffee_app/core/common_widgets/login_button.dart';
import 'package:coffee_app/core/common_widgets/orderfield_name.dart';
import 'package:coffee_app/core/common_widgets/payment_screen_textfield.dart';
import 'package:coffee_app/features/presentation/pages/success_pay_screen.dart';
import 'package:coffee_app/features/presentation/widgets/app_appbar.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: Column(
        children: [
          const AppCustomAppBar(),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderFieldName(
                  orderFieldname: 'DELIVERY ADDRESS',
                ),
                PaymentScreenTextField(
                  hintText: 'Enter Your Address here ',
                ),
                OrderFieldName(
                  orderFieldname: 'PAYMENT METHOD',
                ),
                PaymentScreenTextField(
                  hintText: 'CREDIT/DEBIT CARD',
                ),
                PaymentScreenTextField(
                  hintText: 'NET BANKING',
                ),
                PaymentScreenTextField(
                  hintText: 'LATTEE PAY',
                ),
              ],
            ),
          ),
          const Spacer(),
          LoginButton(
            buttonText: 'P a y',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SuccessPayScreen(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
