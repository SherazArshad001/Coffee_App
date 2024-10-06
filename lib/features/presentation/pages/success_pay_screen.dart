import 'package:coffee_app/core/common_widgets/login_button.dart';
import 'package:coffee_app/features/presentation/pages/app_home_screen.dart';
import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:flutter/material.dart';

class SuccessPayScreen extends StatelessWidget {
  const SuccessPayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: 100,
              width: 100,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.check_rounded,
                    color: AppColor.primaryColor,
                    size: 70,
                    weight: 900,
                  )),
            ),
            const Text(
              'P a y m e n t   S u c c e s s f u l !',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Y o u r   O r d e r   W a s   P l a c e d   S u c c e s s f u l l y ',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w100,
                    color: Colors.white),
              ),
            ),
            const Spacer(),
            LoginButton(
                buttonText: 'H o m e',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AppHomeScreen(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
