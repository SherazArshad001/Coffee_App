import 'package:coffee_app/core/common_widgets/base_screen.dart';
import 'package:coffee_app/features/presentation/pages/product_purchase.dart';
import 'package:coffee_app/features/presentation/theme/app_color.dart';
import 'package:coffee_app/features/presentation/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class AppHomeScreen extends StatelessWidget {
  final List<MenuItemModel> menuItems = [
    MenuItemModel(
      imagePath: 'assets/images/americano_3.png',
      name: 'A M E R I C A N O',
      price: 'RS. 1 9 9',
    ),
    MenuItemModel(
      imagePath: 'assets/images/cafe-latte_2.png',
      name: 'L A T T E',
      price: 'RS. 2 4 9',
    ),
    MenuItemModel(
      imagePath: 'assets/images/cafe-mocha_2.png',
      name: 'C A P P U C C I N O',
      price: 'RS. 1 9 9',
    ),
    MenuItemModel(
      imagePath: 'assets/images/club-sandwich-round_1.png',
      name: 'M O C H A',
      price: 'RS. 3 5 9',
    ),
    MenuItemModel(
      imagePath: 'assets/images/criossant-round_1.png',
      name: 'M A C C H I A T O',
      price: 'RS. 2 4 9',
    ),
    MenuItemModel(
      imagePath: 'assets/images/organic-coffee_2.png',
      name: 'C O R T A D O',
      price: 'RS. 1 9 9',
    ),
    MenuItemModel(
      imagePath: 'assets/images/pizza-round_1.png',
      name: 'B R E V E',
      price: 'RS. 3 4 9',
    ),
    MenuItemModel(
      imagePath: 'assets/images/waffles-round_1.png',
      name: 'F R A P P U C C I N O',
      price: 'RS. 3 9 9',
    ),
  ];

  AppHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: Column(
        children: [
          Container(
            height: 170,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/coffee_main_logo.png',
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    'M e n u',
                    style: TextStyle(
                      color: AppColor.backgroundColor,
                      fontWeight: FontWeight.w100,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailScreen(
                          imagePath: menuItems[index].imagePath,
                          name: menuItems[index].name,
                          price: menuItems[index].price,
                        ),
                      ),
                    );
                  },
                  child: MenuItem(
                    imagePath: menuItems[index].imagePath,
                    name: menuItems[index].name,
                    price: menuItems[index].price,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItemModel {
  final String imagePath;
  final String name;
  final String price;

  MenuItemModel({
    required this.imagePath,
    required this.name,
    required this.price,
  });
}
