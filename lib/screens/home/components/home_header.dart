import 'package:flutter/material.dart';
import 'package:test_app/models/Cart.dart';
// import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:test_app/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final List<Cart> cart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () => Navigator.pushNamed(
              context,
              // CartScreen.routeName
              CartScreen.routeName,
              arguments: CartScreenArguments(cart: cart),
            ),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
